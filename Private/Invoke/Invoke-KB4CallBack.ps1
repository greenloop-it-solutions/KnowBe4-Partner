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

    $callBackParams = @{
        Uri     = 'https://training.knowbe4.com/reseller/auth/saml/ef1b1febd1bf/callback'
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
