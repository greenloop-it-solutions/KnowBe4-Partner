---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4AccountInfo

## SYNOPSIS

This cmdlet returns all account information for the current managed account.

## SYNTAX

```powershell
Get-KB4AccountInfo [[-IsOwner] <String>] [<CommonParameters>]
```

## DESCRIPTION

This cmdlet returns all account information for the current managed account.

## EXAMPLES

### Example 1

```powershell
Get-KB4AccountInfo
```

This command returns all account information for the current managed account you are signed into.

## PARAMETERS

### -IsOwner

Specifies whether the current signed-in user is the owner. Default is `true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

Author: Terry Wilson

## RELATED LINKS
