---
external help file:
Module Name:
online version:
schema: 2.0.0
---

# Invoke-KB4WebRequest

## SYNOPSIS

Queries the GraphQL endpoint.

## SYNTAX

```powershell
Invoke-KB4WebRequest [-Query] <String> [<CommonParameters>]
```

## DESCRIPTION

This cmdlet queries the GraphQL endpoint and invokes requests made from all provided functions.

## EXAMPLES

### Example 1

```powershell
Invoke-KB4WebRequest -Query '<query provided by a function>'
```

## PARAMETERS

### -Query

Query provided by a calling function.

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
