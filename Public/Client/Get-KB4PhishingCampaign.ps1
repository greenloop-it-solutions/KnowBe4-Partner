function Get-KB4PhishingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet('ACTIVE', 'HIDDEN', 'INACTIVE', 'ALL')]
        [string]$Filter = 'ACTIVE',

        [Parameter(Mandatory = $false)]
        [int]$Page = 1,

        [Parameter(Mandatory = $false)]
        [ValidateSet(25, 100)]
        [int]$Per = 25
    )

    $query = "{`"query`":`"query PhishingCampaigns(`$filter: PhishingCampaignFilters, `$per: Int, `$page: Int) {\n  phishingCampaigns(filter: `$filter, per: `$per, page: `$page) {\n    nodes {\n      id\n      name\n      aidaSelectedTemplate\n      frequencyPeriod\n      sendingDuration\n      sendingDurationUnits\n      trackingDuration\n      trackingDurationUnits\n      active\n      allUsers\n      hideFromReports\n      localizedCampaign\n      spreadEmails\n      selectedGroups\n      isPhishflip\n      groups {\n        id\n        name\n        memberCount\n      }\n      clickedGroup {\n        id\n        name\n      }\n      templateCategories {\n        name\n      }\n      templateTopics {\n        name\n      }\n      runs {\n        id\n      }\n      firstRun {\n        id\n      }\n      managedPhishingCampaign {\n        id\n        preventAccountEdits\n      }\n      lastRun {\n        campaignNonRecipientsCount\n        duration\n        phishPronePercentage\n        startedAt\n        status\n        output\n      }\n    }\n    pagination {\n      pages\n      page\n      per\n      totalCount\n    }\n  }\n}\n`",`"variables`":{`"filter`":`"$Filter`",`"per`":$Per,`"page`":$Page}}"

    Invoke-KB4WebRequest -Query $query
}
