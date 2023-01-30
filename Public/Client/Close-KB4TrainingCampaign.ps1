function Close-KB4TrainingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [int]$CampaignId
    )

    $query = "{`"query`":`"mutation TrainingCampaignClose(`$id: Int!) {\n  trainingCampaignClose(id: `$id) {\n    node {\n      id\n      status\n    }\n    errors {\n      reason\n    }\n  }\n}\n`",`"variables`":{`"id`":$CampaignId}}"

    Invoke-KB4WebRequest -Query $query
}
