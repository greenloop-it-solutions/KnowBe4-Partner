function Invoke-KB4Session {
    [CmdletBinding()]
    param (
        [object]$Session
    )

    $spaSessionParams = @{
        Uri        = 'https://training.knowbe4.com/spa/session'
        Method     = 'Get'
        WebSession = $Session
    }

    try {
        ((Invoke-WebRequest @spaSessionParams).Content | ConvertFrom-Json).kmsat.csrf
    } catch {
        $_.Exception.Message
    }
}
