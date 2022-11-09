function Set-KB4ShowHidePhishingDomain {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int]$Id
    )

    $query = "{`"query`":`"mutation PhishDomainToggleOverride(`$id: Int!) {\n  phishDomainToggleOverride(phishDomainId: `$id) {\n    node {\n      id\n      hidden\n    }\n    errors {\n      field\n      reason\n      placeholders\n    }\n  }\n}\n`",`"variables`":{`"id`":$Id}}"

    Invoke-KB4WebRequest -Query $query
}
