---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4TrainingCampaignForm

## SYNOPSIS

Returns basic information about the training campaign form.

## SYNTAX

```powershell
Get-KB4TrainingCampaignForm [[-IncludeAccount] <String>] [[-IncludeUsers] <String>] [[-Status] <String>]
 [<CommonParameters>]
```

## DESCRIPTION

This cmdlet returns basic information about the training campaign form including groups, purchased courses, account seats, and policies.

## EXAMPLES

### Example 1

```powershell
Get-KB4TrainingCampaignForm
```

This command will return all basic information about the current training campaign form.

## PARAMETERS

### -IncludeAccount

TBD. Default value is `true`.

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

### -IncludeUsers

TBD. Default value is `true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status

TBD. Default value is `ACTIVE`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ACTIVE, INACTIVE, ALL

Required: False
Position: 2
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
