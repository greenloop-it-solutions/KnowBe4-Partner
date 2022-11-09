function Invoke-KB4WebRequest {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$Query
    )

    $request = @{
        Uri             = $script:KnowBe4GraphQlEndpoint
        Method          = 'Post'
        UseBasicParsing = $true
        WebSession      = $script:KnowBe4Session
        Body            = $Query
    }

    try {
        $result = Invoke-WebRequest @request
        ($result.Content | ConvertFrom-Json).data
    } catch {
        $_.Exception.Message
    }
}
