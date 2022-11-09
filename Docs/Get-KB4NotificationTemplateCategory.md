---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4NotificationTemplateCategory

## SYNOPSIS

Returns all notification template categories.

## SYNTAX

```powershell
Get-KB4NotificationTemplateCategory [[-Type] <String>] [[-ShowHidden] <String>] [[-ActorType] <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Returns all notification template categories.

## EXAMPLES

### Example 1

```powershell
Get-KB4NotificationTemplateCategory -Type USER -ActorType USER -ShowHidden false
```

This command returns all user specific notification template categories.

## PARAMETERS

### -ActorType

This specifies the context in which the information is requested. Default is `USER`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: USER

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowHidden

Include hidden notification template categories. Default is `false`.

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

### -Type

The type of notification template category.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: USER, SYSTEM

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
