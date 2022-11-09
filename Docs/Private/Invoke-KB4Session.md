---
external help file:
Module Name:
online version:
schema: 2.0.0
---

# Invoke-KB4Session

## SYNOPSIS

Returns a X-CSRF-Token.

## SYNTAX

```powershell
Invoke-KB4Session [[-Session] <Object>] [<CommonParameters>]
```

## DESCRIPTION

This cmdlet returns a X-CSRF-Token which is needed for all requests to the GraphQL endpoint. This includes the KnowBe4 session and CloudFront cookies.

## EXAMPLES

### Example 1

```powershell
Invoke-KB4Session -Session <your provided web session>
```

## PARAMETERS

### -Session

Web session to be used for all remaining requests.

```yaml
Type: Object
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
