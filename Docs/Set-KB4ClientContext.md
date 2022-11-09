---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Set-KB4ClientContext

## SYNOPSIS

Logs into a managed client account (session).

## SYNTAX

```powershell
Set-KB4ClientContext [-AccountOwnerId] <Int32> [<CommonParameters>]
```

## DESCRIPTION

This cmdlet allows you to sign into a managed account and sets the session context to that client.

## EXAMPLES

### Example 1

```powershell
Set-KB4ClientContext -AccountOwnerId 76051889
```

This command signs into the specified managed account using the owner Id of the account.

## PARAMETERS

### -AccountOwnerId

The Id of the account owner. This Id is authorized to sign into the managed account.

The Id can be found under `accountOwner` using the `Get-KB4ManagedAccount` cmdlet.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: Id

Required: True
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
