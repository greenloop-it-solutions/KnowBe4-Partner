function Add-KB4TrainingNotification {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias('Id')]
        [int]$CampaignId,

        [Parameter(Mandatory = $false)]
        [int64]$TimeStamp = 0,

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$Enabled = 'true',

        [Parameter(Mandatory)]
        [ValidateSet('welcome_email', 'notify_after_enrolled', 'past_due', 'notify_before_due', 'notify_on_completion')]
        [string]$MessageType,

        [Parameter(Mandatory = $false)]
        [object]$OffsetNumDays = 0,

        [Parameter(Mandatory = $false)]
        [object]$RescheduleOffset = 'null',

        [Parameter(Mandatory)]
        [int]$EmailTemplateId,

        [Parameter(Mandatory = $false)]
        [object]$AdminEmailTemplateId = 'null',

        [Parameter(Mandatory = $false)]
        [object]$ManagerEmailTemplateId = 'null',

        [Parameter(Mandatory = $false)]
        [ValidateSet('email')]
        [string]$DeliveryMethod = 'email',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$FallBackEmail = 'false'
    )

    $query = "{`"query`":`"mutation TrainingCampaignEdit(`$id: Int!, `$attributes: TrainingCampaignAttributes!, `$endCampaignOption: TrainingCampaignEnd!) {\n  trainingCampaignEdit(\n    id: `$id\n    attributes: `$attributes\n    endCampaignOption: `$endCampaignOption\n  ) {\n    node {\n      id\n    }\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"id`":$CampaignId,`"attributes`":{`"name`":`"Remedial Training`",`"autoEnroll`":true,`"startCampaignAtDate`":`"2022-10-31`",`"startCampaignAtTime`":`"08:00`",`"endCampaignAtDate`":null,`"endCampaignAtTime`":null,`"timeZone`":`"PACIFIC_TIME_US_CANADA`",`"enrollmentDuration`":1,`"enrollmentDurationType`":`"WEEKS`",`"resetAutoEnrollments`":true,`"allowPastDueCompletions`":false,`"allowSurveys`":false,`"allowSurveyComments`":false,`"trackScores`":true,`"selectedContent`":[`"PurchasedCourse:4113634`"],`"selectedGroups`":[3590820],`"removePassedFromGroups`":[3590820],`"addPassedToGroups`":[],`"allUsers`":false,`"notifications`":[{`"timestamp`":$TimeStamp,`"enabled`":$Enabled,`"messageType`":`"$MessageType`",`"offsetNumDays`":$OffsetNumDays,`"rescheduleOffset`":$RescheduleOffset,`"emailTemplateId`":$EmailTemplateId,`"adminEmailTemplateId`":$AdminEmailTemplateId,`"managerEmailTemplateId`":$ManagerEmailTemplateId,`"deliveryMethod`":`"$DeliveryMethod`",`"fallbackEmail`":$FallBackEmail}]},`"endCampaignOption`":`"RELATIVE`"}}"

    Invoke-KB4WebRequest -Query $query
}
