---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4NotificationTemplate

## SYNOPSIS

Returns all notification templates for the client account.

## SYNTAX

```powershell
Get-KB4NotificationTemplate [-CategoryIds] <Int32[]> [[-Drafts] <String>] [[-Type] <String>]
 [[-ShowHidden] <String>] [[-Per] <Int32>] [[-Page] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Returns all notification templates for the client account.

## EXAMPLES

### Example 1

```powershell
Get-KB4NotificationTemplate -Drafts false -Type USER -CategoryIds 189758
```

This command returns all user notification templates using a specific category Id.

## PARAMETERS

### -CategoryIds

The category Id(s) used to return specific notification templates.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Drafts

Used to specify draft only notification templates.

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

### -Page

The page number you want returned.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowHidden

Include hidden notification templates. Default is `false`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type

The type of notification template.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: USER, SYSTEM

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
