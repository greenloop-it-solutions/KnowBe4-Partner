function Get-KB4PhishingDomain {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet('ACCOUNTUSABLE')]
        [string]$DomainType = 'ACCOUNTUSABLE',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$ShowHidden = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('ASCENDING', 'DESCENDING')]
        [string]$SortDirection = 'ASCENDING',

        [Parameter(Mandatory = $false)]
        [ValidateSet('NAME', 'CREATEDAT', 'DOMAINTYPE', 'REPLYTOENABLED')]
        [string]$SortBy = 'NAME',

        [Parameter(Mandatory = $false)]
        [ValidateSet(25, 100, 500)]
        [int]$Per = 25,

        [Parameter(Mandatory = $false)]
        [int]$Page = 1,

        [string]$Search
    )

    $query = "{`"query`":`"query PhishDomains(`$search: String, `$showHidden: Boolean, `$domainType: PhishDomainTypes, `$sortBy: PhishDomainSortFields, `$sortDirection: SortDirections, `$per: Int, `$page: Int) {\n  phishDomains(\n    search: `$search\n    domainType: `$domainType\n    showHidden: `$showHidden\n    sortBy: `$sortBy\n    sortDirection: `$sortDirection\n    per: `$per\n    page: `$page\n  ) {\n    nodes {\n      id\n      name\n      domainType\n      hidden\n      createdAt\n      rootDomain\n      replyToEnabled\n    }\n    pagination {\n      pages\n      page\n      per\n      totalCount\n    }\n  }\n}\n`",`"variables`":{`"per`":$Per,`"page`":$Page,`"domainType`":`"$DomainType`",`"showHidden`":$ShowHidden,`"sortBy`":`"$SortBy`",`"search`":`"$Search`",`"sortDirection`":`"$SortDirection`"}}"

    Invoke-KB4WebRequest -Query $query
}
