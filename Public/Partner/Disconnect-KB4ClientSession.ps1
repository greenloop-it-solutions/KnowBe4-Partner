function Disconnect-KB4ClientSession {
    [CmdletBinding()]
    param ()

    $query = "{`"query`":`"mutation SignOutActors(`$actors: [String!]!) {\n  currentActorsSignOut(actors: `$actors) {\n    node\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"actors`":[`"user`"]}}"

    Invoke-KB4WebRequest -Query $query
}
