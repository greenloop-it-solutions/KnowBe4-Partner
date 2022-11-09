function Get-KB4ManagedAccount {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet(25, 100)]
        [int]$Per = 25,

        [Parameter(Mandatory = $false)]
        [int]$Page = 1,

        [string]$Search,

        [Parameter(Mandatory = $false)]
        [ValidateSet('ALL', 'ACTIVE', 'ARCHIVED')]
        [string]$Status = 'ALL',

        [Parameter(Mandatory = $false)]
        [ValidateSet('ANY', 'PAID', 'TRIAL', 'FREE')]
        [string]$BillingType = 'ANY',

        [Parameter(Mandatory = $false)]
        [ValidateSet('ORGANIZATION', 'DATE_CREATED', 'SEATS', 'USERS', 'PHISH_PRONE', 'PSTS')]
        [string]$SortField = 'ORGANIZATION',

        [Parameter(Mandatory = $false)]
        [ValidateSet('ASCENDING', 'DESCENDING')]
        [string]$SortDirection = 'ASCENDING',

        [Parameter(Mandatory = $false)]
        [ValidateSet('ALL')]
        [string]$OtherPartnersAccounts = 'ALL'
    )

    $query = "{`"query`":`"query Accounts(`$per: Int!, `$page: Int!, `$partnerId: Int, `$status: AccountStatuses, `$billingType: AccountBillingTypes, `$search: String, `$sortField: AccountSortFields, `$sortDirection: SortDirections, `$otherPartnersAccounts: AccountPartnerInclusions) {\n  accounts(\n    per: `$per\n    page: `$page\n    partnerId: `$partnerId\n    status: `$status\n    billingType: `$billingType\n    search: `$search\n    sortField: `$sortField\n    sortDirection: `$sortDirection\n    otherPartnersAccounts: `$otherPartnersAccounts\n  ) {\n    nodes {\n      id\n      accountSettingsFlagNames\n      archived\n      billingType\n      pstCount\n      companyName\n      purchasedCourseCount\n      createdAt\n      domain\n      hasFreePst\n      hasFreePrt\n      hasFreeSpt\n      hasFreeUsb\n      numberOfSeats\n      userCount\n      partnerAccessExpiration\n      percentageUsersPhished\n      percentageUsersTrained\n      phishPronePercentage\n      latestRiskScore\n      subscriptionEndDate\n      resellerId\n      partnerEmail\n      partnerDisplayName\n      accountOwner {\n        id\n        confirmedAt\n      }\n      subscriptionObject {\n        id\n        friendlyName\n      }\n      purchasedSkus {\n        skuCode\n      }\n      languageSettings {\n        adminLocale\n      }\n    }\n    pagination {\n      pages\n      page\n      per\n      totalCount\n    }\n  }\n}\n`",`"variables`":{`"per`":$Per,`"page`":$Page,`"search`":`"$Search`",`"status`":`"$Status`",`"billingType`":`"$BillingType`",`"sortField`":`"$SortField`",`"sortDirection`":`"$SortDirection`",`"otherPartnersAccounts`":`"$OtherPartnersAccounts`"}}"

    Invoke-KB4WebRequest -Query $query
}
