function Get-KB4PhishingCampaignForm {
    [CmdletBinding()]
    param ()

    $query = "{`"query`":`"query LegacyPhishingCampaignForm(`$phishingTemplateType: PhishingTemplateCategoryTypes) {\n  groups(includeAnonymizePhishing: false, all: true) {\n    nodes {\n      id\n      name: displayName\n      groupType\n    }\n  }\n  phishDomains(all: true, domainType: ACCOUNTUSABLE) {\n    nodes {\n      id\n      dotname\n      name\n      replyToEnabled\n      domainType\n    }\n  }\n  accountSettings {\n    phishingSettings {\n      aidaSelectedAvailable\n    }\n    languageStats {\n      languageCode\n      numberOfUsers\n    }\n    languageSettings {\n      phishingLocale\n    }\n  }\n  landingPageCategories(all: true) {\n    nodes {\n      name\n      type\n      landingPages {\n        id\n        title\n      }\n    }\n  }\n  phishingTemplateCategories(all: true, type: `$phishingTemplateType) {\n    nodes {\n      id\n      name\n      type\n    }\n  }\n}\n`",`"variables`":{}}"

    Invoke-KB4WebRequest -Query $query
}
