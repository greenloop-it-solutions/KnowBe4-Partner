---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Add-KB4TrainingNotification

## SYNOPSIS

Adds a training notification to an existing campaign.

## SYNTAX

```powershell
Add-KB4TrainingNotification [-CampaignId] <Int32> [[-TimeStamp] <Int64>] [[-Enabled] <String>]
 [-MessageType] <String> [[-OffsetNumDays] <Object>] [[-RescheduleOffset] <Object>] [-EmailTemplateId] <Int32>
 [[-AdminEmailTemplateId] <Object>] [[-ManagerEmailTemplateId] <Object>] [[-DeliveryMethod] <String>]
 [[-FallBackEmail] <String>] [<CommonParameters>]
```

## DESCRIPTION

Adds a training notification to an existing campaign.

## EXAMPLES

### Example 1

```powershell
Add-KB4TrainingNotification -CampaignId 1229418 -MessageType 'welcome_email' -EmailTemplateId 248835
```

This command adds a notification to an existing training campaign.

## PARAMETERS

### -AdminEmailTemplateId

The `Admin` email template Id used to send notifications to the administrator.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CampaignId

The campaign Id of the existing training.

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

### -DeliveryMethod

The method used to deliver the notification. Currently, `email` is the only option (used by default).

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: email

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmailTemplateId

The `User` email template Id used to send notifications to the user.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Enabled

Enables the notification. Enabled by default.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FallBackEmail

An email address that is used in place of the primary (if not available).

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManagerEmailTemplateId

The `Manager` email template Id used to send notifications to the manager.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MessageType

Specifies which type of email notification will be used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: welcome_email, notify_after_enrolled, past_due, notify_before_due, notify_on_completion

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OffsetNumDays

Sets the amount of days to be used for a reminder. Can be used with the `MessageType` parameter to determine before and after due dates.
Example: send a reminder 1 day after enrollment

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RescheduleOffset

Sets the amount of days to send a recurring reminder.
Example: resend a reminder every 3 days.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeStamp

TBD.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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
