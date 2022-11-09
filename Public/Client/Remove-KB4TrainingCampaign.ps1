function Remove-KB4TrainingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [int[]]$CampaignId
    )

    $ids = $CampaignId -join ','

    $query = "{`"query`":`"mutation TrainingCampaignDelete(`$ids: [Int!]!) {\n  trainingCampaignDelete(ids: `$ids) {\n    node\n    errors {\n      reason\n    }\n  }\n}\n`",`"variables`":{`"ids`":[$ids]}}"

    Invoke-KB4WebRequest -Query $query
}
