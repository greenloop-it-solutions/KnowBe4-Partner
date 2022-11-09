function Remove-KB4PhishingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [int]$CampaignId
    )

    $query = "{`"query`":`"mutation PhishingCampaignDelete(`$id: Int!) {\n  phishingCampaignDelete(id: `$id) {\n    node {\n      id\n    }\n    errors {\n      reason\n    }\n  }\n}\n`",`"variables`":{`"id`":$CampaignId}}"

    Invoke-KB4WebRequest -Query $query
}
