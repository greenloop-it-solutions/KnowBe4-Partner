function Set-KB4ClientContext {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [int]$AccountOwnerId
    )

    $query = "{`"query`":`"mutation SignInAsAdmin(`$id: Int!) {\n  signInAsAdmin(id: `$id) {\n    node\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"id`":$AccountOwnerId}}"

    Invoke-KB4WebRequest -Query $query
}
