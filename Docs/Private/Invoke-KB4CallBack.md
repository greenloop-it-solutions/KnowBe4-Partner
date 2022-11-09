---
external help file:
Module Name:
online version:
schema: 2.0.0
---

# Invoke-KB4CallBack

## SYNOPSIS

Returns a KnowBe4 session cookie.

## SYNTAX

```powershell
Invoke-KB4CallBack [[-SAMLResponse] <String>] [<CommonParameters>]
```

## DESCRIPTION

This cmdlet returns a KnowBe4 session cookie by providing a SAML response.

## EXAMPLES

### Example 1

```powershell
Invoke-KB4CallBack -SAMLResponse '<your SAML response string here>'
```

## PARAMETERS

### -SAMLResponse

The SAML response string.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

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
