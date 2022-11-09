---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Connect-KB4PartnerAccount

## SYNOPSIS

Connects to the KnowBe4 Partner Account portal.

## SYNTAX

```powershell
Connect-KB4PartnerAccount [-EmailAddress] <String> [<CommonParameters>]
```

## DESCRIPTION

Connects to the KnowBe4 Partner Account portal using SAML Single Sign-On authentication.

## EXAMPLES

### Example 1

```powershell
Connect-KB4PartnerAccount -EmailAddress 'kb4admin@contoso.com'
```

This command connects and authenticates to the KnowBe4 Partner.

## PARAMETERS

### -EmailAddress

The email address used to log into the account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

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
