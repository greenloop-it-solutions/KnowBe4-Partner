---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4PhishingCampaign

## SYNOPSIS

Returns all phishing campaigns for the managed client account.

## SYNTAX

```powershell
Get-KB4PhishingCampaign [[-Filter] <String>] [[-Page] <Int32>] [[-Per] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Returns all phishing campaigns for the managed client account.

## EXAMPLES

### Example 1

```powershell
Get-KB4PhishingCampaign -Filter 'ACTIVE'
```

This command returns all `ACTIVE` phishing campaigns.

## PARAMETERS

### -Filter

Returns a campaign based on a current state.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ACTIVE, HIDDEN, INACTIVE, ALL

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Page

The page number you want returned.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Per

This specifies how many results you want returned. Default is 25 (per page).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:
Accepted values: 25, 100

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
