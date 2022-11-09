function Get-KB4TrainingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet('ACTIVE', 'INACTIVE', 'ALL')]
        [string]$Filter = 'ACTIVE',

        [Parameter(Mandatory = $false)]
        [int]$Page = 1,

        [Parameter(Mandatory = $false)]
        [ValidateSet(25, 100)]
        [int]$Per = 25
    )

    $query = "{`"query`":`"query TrainingCampaigns(`$accountId: Int, `$filter: TrainingCampaignFilters, `$includeDeleted: Boolean, `$search: String, `$sortField: TrainingCampaignSortFields, `$sortDirection: SortDirections, `$per: Int, `$page: Int) {\n  trainingCampaigns(\n    accountId: `$accountId\n    filter: `$filter\n    includeDeleted: `$includeDeleted\n    search: `$search\n    sortField: `$sortField\n    sortDirection: `$sortDirection\n    per: `$per\n    page: `$page\n  ) {\n    nodes {\n      id\n      name\n      status\n      deleted\n      active\n      startsAt\n      endsAt\n      enrollmentDuration\n      enrollmentDurationType\n      allUsers\n      allowPastDueCompletions\n      endCampaignOption\n      selectedContent\n      hasIndividualEnrollments\n      groups {\n        id\n        name\n      }\n      managedTrainingCampaign {\n        id\n        preventAccountEdits\n      }\n      assets {\n        ... on Policy {\n          id\n          title\n          assetType\n          description\n          archived\n          retired\n          retiringSoon\n          polymorphicId\n        }\n        ... on PurchasedCourse {\n          id\n          title\n          assetType\n          description\n          archived\n          retired\n          retiringSoon\n          trainingCampaignBadge\n          storeItem {\n            __typename\n            ... on StoreItemInterface {\n              type\n            }\n          }\n          polymorphicId\n        }\n      }\n    }\n    pagination {\n      pages\n      page\n      per\n      totalCount\n    }\n  }\n}\n`",`"variables`":{`"filter`":`"$Filter`",`"per`":$Per,`"page`":$Page}}"

    Invoke-KB4WebRequest -Query $query
}
