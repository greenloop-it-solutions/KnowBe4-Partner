---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Close-KB4TrainingCampaign

## SYNOPSIS

Closes a training campaign.

## SYNTAX

```powershell
Close-KB4TrainingCampaign [-CampaignId] <Int32> [<CommonParameters>]
```

## DESCRIPTION

Closes a training campaign.

## EXAMPLES

### Example 1

```powershell
Close-KB4TrainingCampaign -CampaignId 1730488
```

This command closes a specific training campaign.

## PARAMETERS

### -CampaignId

The Id of the training campaign.

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
