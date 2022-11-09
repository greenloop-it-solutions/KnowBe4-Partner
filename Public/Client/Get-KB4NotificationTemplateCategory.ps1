function Get-KB4NotificationTemplateCategory {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet('USER', 'SYSTEM')]
        [string]$Type = 'USER',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$ShowHidden = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('USER')]
        [string]$ActorType = 'USER'
    )

    $query = "{`"query`":`"query NotificationTemplateCategories(`$type: NotificationTemplateCategoryTypes!, `$showHidden: Boolean, `$actorType: NotificationTemplateCategoryTypes!) {\n  notificationTemplateCategories(type: `$type, showHidden: `$showHidden) {\n    nodes {\n      id\n      name\n      createdAt\n      hidden\n      templateCount(showHidden: false)\n    }\n  }\n  notificationTemplateDrafts(type: `$type) {\n    count\n  }\n  userCategories: notificationTemplateCategories(\n    type: `$actorType\n    showHidden: `$showHidden\n  ) {\n    nodes {\n      id\n      name\n      createdAt\n      hidden\n    }\n  }\n}\n`",`"variables`":{`"type`":`"$Type`",`"showHidden`":$ShowHidden,`"actorType`":`"$ActorType`"}}"

    Invoke-KB4WebRequest -Query $query
}
