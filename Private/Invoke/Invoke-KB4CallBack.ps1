function Invoke-KB4CallBack {
    [CmdletBinding()]
    param (
        [string]$SAMLResponse
    )

    # Post to the KB4 call back URL and store the websession (this returns a KB4 session cookie)
    # Next, query the SPA endpoint which will retrn the 'x-csrf-token' needed for all GraphQL calls going forward
    # This includes CloudFront and KB4 session cookies from the previous call
    # More info: https://aws.amazon.com/cloudfront/

    $headers = [System.Collections.Generic.Dictionary[string, string]]::new()
    $headers.Add("Content-Type", "application/x-www-form-urlencoded")
    $body = $SAMLResponse

    # SAML Response in Base64
    $base64SamlResponse = [System.Web.HttpUtility]::UrlDecode($samlresponse)
    # Remove the 'samlresponse=' part to get the pure Base64 string
    $base64SamlResponse = $base64SamlResponse -replace '^samlresponse=', ''
    # Base64 decode the SAML response
    $decodedBytes = [System.Convert]::FromBase64String($base64SamlResponse)

    try {
        # Assume the SAML response is deflated. Try to inflate (unzip) it.
        $ms = New-Object System.IO.MemoryStream $decodedBytes
        $deflateStream = New-Object System.IO.Compression.DeflateStream $ms, ([System.IO.Compression.CompressionMode]::Decompress)
        $sr = New-Object System.IO.StreamReader $deflateStream
        $samlXml = $sr.ReadToEnd()
    } catch {
        # If the inflate operation fails, the SAML response might not be deflated.
        # In this case, just convert the decoded bytes to a string.
        $samlXml = [Text.Encoding]::UTF8.GetString($decodedBytes)
    }

    # Assume $samlXml contains the SAML response XML content
    # Convert the SAML XML string to an XML document object
    $xmlDoc = [xml]$samlXml
    $destination = $xmlDoc.Response.destination

    $callBackParams = @{
        Uri     = "$destination"
        Method  = 'Post'
        Headers = $headers
        Body    = $body
        Session = 'KnowBe4Session'
    }

    try {
        Invoke-WebRequest @callBackParams | Out-Null
        $csrfToken = Invoke-KB4Session -Session $KnowBe4Session
        $KnowBe4Session.Headers.Add('x-csrf-token', $csrfToken)
        $KnowBe4Session.Headers.'Content-Type' = 'application/json'
        $KnowBe4Session
    } catch {
        $_.Exception.Message
    }
}
