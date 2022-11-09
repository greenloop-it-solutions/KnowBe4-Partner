function Get-KB4TrainingCampaignForm {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$IncludeAccount = 'true',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$IncludeUsers = 'true',

        [Parameter(Mandatory = $false)]
        [ValidateSet('ACTIVE', 'INACTIVE', 'ALL')]
        [string]$Status = 'ACTIVE'
    )

    $query = "{`"query`":`"query CampaignForm(`$includeAccount: Boolean!, `$includeUsers: Boolean!, `$status: UserStatusFilters) {\n  account @include(if: `$includeAccount) {\n    numberOfSeats\n    hasOnlyStaleContent\n  }\n  users(status: `$status) @include(if: `$includeUsers) {\n    pagination {\n      totalCount\n    }\n  }\n  groups(all: true, permissionScope: TRAINING) {\n    nodes {\n      id\n      name: displayName\n      groupType\n    }\n  }\n  purchasedCourses(all: true, excludeHidden: true) {\n    nodes {\n      polymorphicId\n      title\n      duration\n      publishedAt\n      assessment\n      beta\n      retiringSoon\n      trainingCampaignBadge\n      retired\n      archived\n      hidden\n      storeItem {\n        __typename\n        ... on StoreItemInterface {\n          type\n        }\n      }\n      uploaded\n      alternatives {\n        id\n        uuid\n        title\n        status\n      }\n    }\n  }\n  policies(all: true, statuses: [PUBLISHED]) {\n    nodes {\n      title\n      polymorphicId\n      publishedAt\n    }\n  }\n  accountSettings {\n    id\n    trainingSettings {\n      id\n      enableSurveysDefault\n    }\n    learnerExperienceSettings {\n      optionalTrainingEnabled\n    }\n  }\n}\n`",`"variables`":{`"includeAccount`":$IncludeAccount,`"includeUsers`":$IncludeUsers,`"status`":`"$Status`"}}"

    Invoke-KB4WebRequest -Query $query
}
