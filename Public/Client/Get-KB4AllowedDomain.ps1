function Get-KB4AllowedDomain {
    [CmdletBinding()]
    param ()

    $query = "{`"query`":`"query AllowedDomains(`$accountId: Int) {\n  allowedDomains(accountId: `$accountId, all: true) {\n    nodes {\n      id\n      name\n      verificationStatus\n      isPrimary\n    }\n  }\n}\n`",`"variables`":{}}"

    Invoke-KB4WebRequest -Query $query
}
