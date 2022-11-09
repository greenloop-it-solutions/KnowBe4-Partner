function Connect-KB4PartnerAccount {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$EmailAddress
    )

    $request = @{
        Uri             = 'https://training.knowbe4.com/spa/auth/registration'
        Method          = 'Post'
        Headers         = @{'x-requested-with' = 'XMLHttpRequest'}
        ContentType     = "application/json"
        UseBasicParsing = $true
        Body            = "{`"resource_type`":`"reseller`",`"email`":`"$EmailAddress`"}"
    }

    try {
        $samlRequest = ((Invoke-WebRequest @request).Content | ConvertFrom-Json).redirectTo
    } catch {
        $_.Exception.Message
    }

    $samlResponse = New-SAMLInteractive -LoginIDP $samlRequest
    $samlResponse = 'SAMLResponse=' + [System.Web.HTTPUtility]::UrlEncode($samlResponse)

    $script:KnowBe4Session = Invoke-KB4CallBack -SAMLResponse $samlResponse
    $script:KnowBe4GraphQlEndpoint = "https://training.knowbe4.com/graphql"
}
