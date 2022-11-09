function Get-KB4NotificationTemplate {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int[]]$CategoryIds,

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$Drafts = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('USER', 'SYSTEM')]
        [string]$Type = 'USER',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$ShowHidden = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet(25, 100)]
        [int]$Per = 25,

        [Parameter(Mandatory = $false)]
        [int]$Page = 1
    )

    $query = "{`"query`":`"query notificationTemplates(`$category_ids: [Int!], `$type: NotificationTemplateTypes!, `$search: String, `$showHidden: Boolean, `$sortDirection: SortDirections, `$sortField: EmailTemplateSortFields, `$per: Int, `$page: Int, `$drafts: Boolean, `$all: Boolean, `$includeArchived: Boolean) {\n  notificationTemplates(\n    categoryIds: `$category_ids\n    type: `$type\n    search: `$search\n    showHidden: `$showHidden\n    sortDirection: `$sortDirection\n    sortField: `$sortField\n    per: `$per\n    page: `$page\n    drafts: `$drafts\n    all: `$all\n    includeArchived: `$includeArchived\n  ) {\n    nodes {\n      id\n      name\n      subject\n      createdAt\n      updatedAt\n      hidden\n      archived\n      category {\n        id\n        hidden\n        name\n      }\n    }\n    pagination {\n      pages\n      page\n      per\n      totalCount\n    }\n  }\n  notificationTemplateCount(type: `$type)\n}\n`",`"variables`":{`"category_ids`":$CategoryIds,`"type`":`"$Type`",`"drafts`":$Drafts}}"

    Invoke-KB4WebRequest -Query $query
}
