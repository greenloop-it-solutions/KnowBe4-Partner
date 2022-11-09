---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# New-KB4TrainingCampaign

## SYNOPSIS

Creates a new training campaign.

## SYNTAX

```powershell
New-KB4TrainingCampaign [-Name] <String> [[-AutoEnroll] <String>] [-StartCampaignAtDate] <String>
 [-StartCampaignAtTime] <String> [[-EndCampaignAtDate] <String>] [[-EndCampaignAtTime] <String>]
 [-TimeZone] <String> [[-EnrollmentDuration] <Int32>] [[-EnrollmentDurationType] <String>]
 [[-ResetAutoEnrollments] <String>] [[-AllowPastDueCompletions] <String>] [[-AllowSurveys] <String>]
 [[-AllowSurveyComments] <String>] [[-TrackScores] <String>] [-SelectedContent] <Int32>
 [[-SelectedGroups] <Int32>] [[-RemovePassedFromGroups] <Int32>] [[-AddPassedToGroups] <Int32>]
 [[-AllUsers] <String>] [[-EndCampaignOption] <String>] [-Notifications] [<CommonParameters>]
```

## DESCRIPTION

This cmldlet creates a new training campaign.

## EXAMPLES

### Example 1

```powershell
$trainingCampaign = @{
    Name                    = "Remedial Training"
    AutoEnroll              = 'true'
    StartCampaignAtDate     = "2022-11-16"
    StartCampaignAtTime     = "08:00"
    EndCampaignAtDate       = 'null'
    EndCampaignAtTime       = 'null'
    TimeZone                = 'PACIFIC_TIME_US_CANADA'
    EnrollmentDuration      = 1
    EnrollmentDurationType  = "WEEKS"
    ResetAutoEnrollments    = 'true'
    AllowPastDueCompletions = 'false'
    AllowSurveys            = 'false'
    AllowSurveyComments     = 'false'
    TrackScores             = 'true'
    SelectedContent         = 4113634
    SelectedGroups          = 3590820
    RemovePassedFromGroups  = 3590820
    AddPassedToGroups       = 0
    AllUsers                = 'false'
    EndCampaignOption       = "RELATIVE"
}

New-KB4TrainingCampaign @trainingCampaign
```

This command creates a new training campaign with the specified values.

## PARAMETERS

### -AddPassedToGroups

Adds users to specific groups when assignments are completed.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllUsers

Enrolls all users to the assigned training.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowPastDueCompletions

Allows users to complete the training after the due date.

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

### -AllowSurveyComments

Allows users to leave comments for the optional content survey (if enabled) after they have completd the training.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowSurveys

Allows users to take an optional survey at the end of the training.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoEnroll

This automatically enrolls users who are new to the console if the `AllUsers` parameter is set to `true`.
This also applies to selected groups. If this option is set to `true`, users who are added to selected groups will\
automatically be enrolled.

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

### -EndCampaignAtDate

The specific date the campaign ends.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndCampaignAtTime

The specific time the campaign ends.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndCampaignOption

This specifies whether to make the campaign duration relative, date specific, or have no end date at all.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: RELATIVE, SPECIFY_DATE, NO_END_DATE

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnrollmentDuration

The amount of days, weeks, or months the user will have to complete the assigned training.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnrollmentDurationType

Specifies the type of unit to use (`DAYS`, `WEEKS`, `MONTHS`). Used with the `EnrollmentDuration` parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: DAYS, WEEKS, MONTHS

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name

The name of the training campaign.

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

### -Notifications

Specifies whether notifications will be created. Dynamic parameters are instantiated when this parameter is used.

Dynamic parameters:

- `[int64] TimeStamp` - TBD.
- `[string] Enabled` - Enables the notification. Enabled by default.
- `[string] MessageType` - Specifies which type of email notification will be used. Reference the `Add-KB4TrainingNotifcation` for types.
- `[object] OffsetNumDays` - Sets the amount of days to be used for a reminder. Can be used with the `MessageType` parameter to determine before and after due dates.
- `[object] RescheduleOffset` - Sets the amount of days to send a reocurring reminder.
- `[int] EmailTemplateId` - The `User` email template Id used to send notifications to the user.
- `[object] AdminEmailTemplateId` - The `Admin` email template Id used to send notifications to the administrator.
- `[object] ManagerEmailTemplateId` - The `Manager` email template Id used to send notifications to the manager.
- `[string] DeliveryMethod` - The method used to deliver the notification. Currently, `email` is the only option (used by default).
- `[string] FallBackEmail` - An email address that is used in place of the primary (if not available).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemovePassedFromGroups

Users that complete all of their assignments will be removed from the selected groups.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResetAutoEnrollments

Used for `Remedial Training` campaigns only. This option resets a user's progress if enrolled in the campaign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectedContent

Specifies which training course will be used for the training campaign.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectedGroups

Specifies which groups to be included in the training campaign.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartCampaignAtDate

The date at which to start the training campaign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartCampaignAtTime

The time at which to start the training campaign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeZone

The specified time zone to use for the training campaign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrackScores

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 13
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
