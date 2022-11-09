function New-KB4PhishingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateRange(0, 6)]
        [int[]]$BusinessDays = @(1, 2, 3, 4, 5),

        [Parameter(Mandatory)]
        [string]$BusinessHoursEndHour,

        [Parameter(Mandatory)]
        [string]$BusinessHoursStartHour,

        [Parameter(Mandatory = $false)]
        [object]$ClickedGroupId = 'null',

        [Parameter(Mandatory = $false)]
        [object]$EmailTemplateId = -1,

        [Parameter(Mandatory = $false)]
        [ValidateSet('ONETIME', 'BIWEEK', 'WEEK', 'MONTH', 'QUARTER')]
        [string]$FrequencyPeriod = 'BIWEEK',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$HideFromReports = 'false',

        [Parameter(Mandatory = $false)]
        [object]$LandingPageId = 'null',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$LocalizedCampaign = 'false',

        [Parameter(Mandatory)]
        [string]$Name,

        [Parameter(Mandatory)]
        [string]$NextRunDate,

        [Parameter(Mandatory)]
        [string]$NextRunTime,

        [Parameter(Mandatory = $false)]
        [object]$PhishDomainId = 'null',

        [ValidateSet('BASIC', 'LIMITED', 'MODERATE', 'SIGNIFICANT', 'ADVANCED')]
        [string[]]$Rating,

        [string]$ReplyDomainPrefix,

        [Parameter(Mandatory = $false)]
        [int]$ReplyPhishDomainId = 40,

        [Parameter(Mandatory = $false)]
        [int[]]$SelectedGroups = 0,

        [Parameter(Mandatory)]
        [int[]]$SelectedTemplateCategories,

        [string[]]$SelectedTemplateTopics,

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$SendEmailAfterRun = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateRange(1, 6)]
        [int]$SendingDuration = 3,

        [Parameter(Mandatory = $false)]
        [ValidateSet('DAYS', 'WEEKS', 'MONTHS')]
        [string]$SendingDurationUnits = 'DAYS',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$SpreadEmails = 'true',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$StoreReplyContent = 'false',

        [Parameter(Mandatory)]
        [string]$TimeZone,

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$TrackOutOfOfficeReplies = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$TrackReplies = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateRange(1, 6)]
        [int]$TrackingDuration = 3,

        [Parameter(Mandatory = $false)]
        [ValidateSet('DAYS', 'WEEKS', 'MONTHS')]
        [string]$TrackingDurationUnits = 'DAYS'
    )

    $query = "{`"query`":`"mutation PhishingCampaignCreate(`$attributes: PhishingCampaignAttributes!) {\n  phishingCampaignCreate(attributes: `$attributes) {\n    node {\n      id\n    }\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"attributes`":{`"businessDays`":[$($BusinessDays -join ',')],`"businessHoursEndHour`":`"$BusinessHoursEndHour`",`"businessHoursStartHour`":`"$BusinessHoursStartHour`",`"clickedGroupId`":$ClickedGroupId,`"emailTemplateId`":$EmailTemplateId,`"frequencyPeriod`":`"$FrequencyPeriod`",`"hideFromReports`":$HideFromReports,`"landingPageId`":$LandingPageId,`"localizedCampaign`":$LocalizedCampaign,`"name`":`"$Name`",`"nextRunDate`":`"$NextRunDate`",`"nextRunTime`":`"$NextRunTime`",`"phishDomainId`":$PhishDomainId,`"rating`":[$Rating],`"replyDomainPrefix`":`"$ReplyDomainPrefix`",`"replyPhishDomainId`":$ReplyPhishDomainId,`"selectedGroups`":[$($SelectedGroups -join ',')],`"selectedTemplateCategories`":[$($SelectedTemplateCategories -join ',')],`"selectedTemplateTopics`":[$($SelectedTemplateTopics -join ',')],`"sendEmailAfterRun`":$SendEmailAfterRun,`"sendingDuration`":$SendingDuration,`"sendingDurationUnits`":`"$SendingDurationUnits`",`"spreadEmails`":$SpreadEmails,`"storeReplyContent`":$StoreReplyContent,`"timeZone`":`"$TimeZone`",`"trackOutOfOfficeReplies`":$TrackOutOfOfficeReplies,`"trackReplies`":$TrackReplies,`"trackingDuration`":$TrackingDuration,`"trackingDurationUnits`":`"$TrackingDurationUnits`"}}}"

    Invoke-KB4WebRequest -Query $query
}
