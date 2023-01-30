function Close-KB4PhishingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [int]$CampaignId
    )

    $query = "{`"query`":`"mutation PhishingCampaignDeactivate(`$id: Int!, `$deactivate: Boolean!) {\n  phishingCampaignDeactivate(id: `$id, deactivate: `$deactivate) {\n    node {\n      id\n      active\n    }\n    errors {\n      reason\n    }\n  }\n}\n`",`"variables`":{`"id`":$CampaignId,`"deactivate`":true}}"

    Invoke-KB4WebRequest -Query $query
}
