---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# New-KB4PhishingCampaign

## SYNOPSIS

Creates a new phishing campaign.

## SYNTAX

```powershell
New-KB4PhishingCampaign [[-BusinessDays] <Int32[]>] [-BusinessHoursEndHour] <String>
 [-BusinessHoursStartHour] <String> [[-ClickedGroupId] <Object>] [[-EmailTemplateId] <Object>]
 [[-FrequencyPeriod] <String>] [[-HideFromReports] <String>] [[-LandingPageId] <Object>]
 [[-LocalizedCampaign] <String>] [-Name] <String> [-NextRunDate] <String> [-NextRunTime] <String>
 [[-PhishDomainId] <Object>] [[-Rating] <String[]>] [[-ReplyDomainPrefix] <String>]
 [[-ReplyPhishDomainId] <Int32>] [[-SelectedGroups] <Int32[]>] [-SelectedTemplateCategories] <Int32[]>
 [[-SelectedTemplateTopics] <String[]>] [[-SendEmailAfterRun] <String>] [[-SendingDuration] <Int32>]
 [[-SendingDurationUnits] <String>] [[-SpreadEmails] <String>] [[-StoreReplyContent] <String>]
 [-TimeZone] <String> [[-TrackOutOfOfficeReplies] <String>] [[-TrackReplies] <String>]
 [[-TrackingDuration] <Int32>] [[-TrackingDurationUnits] <String>] [<CommonParameters>]
```

## DESCRIPTION

This cmdlet creates a new phishing campaign.

## EXAMPLES

### Example 1

```powershell
$phishingCampaign = @{
    BusinessDays               = 1,2,3,4,5
    BusinessHoursEndHour       = '17:00'
    BusinessHoursStartHour     = '08:00'
    TimeZone                   = 'PACIFIC_TIME_US_CANADA'
    ClickedGroupId             = 3590820
    Name                       = 'Phishing Campaign'
    FrequencyPeriod            = 'BIWEEK'
    NextRunDate                = '2022-11-16'
    NextRunTime                = '15:30'
    SelectedTemplateCategories = 1252
    ReplyDomainPrefix          = 43
    ReplyPhishDomainId         = 'contoso'
    StoreReplyContent          = 'true'
    TrackReplies               = 'true'
}

New-KB4PhishingCampaign @phishingCampaign
```

This command creates a new phishing campaign with the specified values.

## PARAMETERS

### -BusinessDays

Specifies which days the company operates.

- `0` = Sunday
- `1` = Monday
- `2` = Tuesday
- `3` = Wednesday
- `4` = Thursday
- `5` = Friday
- `6` = Saturday

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BusinessHoursEndHour

The time the business ends for the day. Example: `17:00`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BusinessHoursStartHour

The time the business opens. Example: `08:00`

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

### -ClickedGroupId

The Id of the group you want to add users to when they fail a phishing test.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmailTemplateId

The `User` email template Id used to send notifications to the user.

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

### -FrequencyPeriod

Determines how often the campaign will run.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ONETIME, BIWEEK, WEEK, MONTH, QUARTER

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HideFromReports

Specifies whether or not to hide the phishing campaign from reports. Hidden campaigns will not impact risk scores.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LandingPageId

Specifies a landing page Id to replace the default landing pages associated with email templates and the Account Settings.

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

### -LocalizedCampaign

Specifies whether or not to send phishing emails in the users's language.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name

The name of the phishing campaign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NextRunDate

The date in which the campaign will initially run.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NextRunTime

The time in which the campaign will run at.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PhishDomainId

TBD.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Rating

Specifies the difficulty rating for the phishing template.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: BASIC, LIMITED, MODERATE, SIGNIFICANT, ADVANCED

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplyDomainPrefix

The sub-domain to be used in the `reply-to` address. This is typically the default (primary) domain name. Example: `contoso`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplyPhishDomainId

The Id of the domain to be used in the `reply-to` email.

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

### -SelectedGroups

Specific groups to be included in the phishing campaign.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectedTemplateCategories

The phishing template categories to be used in the campaign.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectedTemplateTopics

TBD.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendEmailAfterRun

Specifies whether or not to email account admins after each phishing test.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendingDuration

Sets the amount of days to send phishing tests.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendingDurationUnits

Specifies the type of unit to use (`DAYS`, `WEEKS`, `MONTHS`). Used with the `SendingDuration` parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: DAYS, WEEKS, MONTHS

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SpreadEmails

Specifies whether or not to spread phishing tests over a specific time frame instead of all at once.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StoreReplyContent

Store all user replies.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeZone

The specified time zone to use for the phishing campaign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrackOutOfOfficeReplies

Track out of office replies and count them as failures.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrackReplies

Keeps track of user replies to all phishing emails.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrackingDuration

The length of time to track phishing email failures. Max is 6 months.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 27
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrackingDurationUnits

Specifies the type of unit to use (`DAYS`, `WEEKS`, `MONTHS`). Used with the `TrackingDuration` parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: DAYS, WEEKS, MONTHS

Required: False
Position: 28
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
