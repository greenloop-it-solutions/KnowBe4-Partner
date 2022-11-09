function New-KB4TrainingCampaign {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$Name,

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$AutoEnroll = 'true',

        [Parameter(Mandatory)]
        [string]$StartCampaignAtDate,

        [Parameter(Mandatory)]
        [string]$StartCampaignAtTime,

        [string]$EndCampaignAtDate,

        [string]$EndCampaignAtTime,

        [Parameter(Mandatory)]
        [string]$TimeZone,

        [Parameter(Mandatory = $false)]
        [int]$EnrollmentDuration = 3,

        [Parameter(Mandatory = $false)]
        [ValidateSet('DAYS', 'WEEKS', 'MONTHS')]
        [string]$EnrollmentDurationType = 'WEEKS',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$ResetAutoEnrollments = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$AllowPastDueCompletions = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$AllowSurveys = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$AllowSurveyComments = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$TrackScores = 'false',

        [Parameter(Mandatory)]
        [int]$SelectedContent,

        [Parameter(Mandatory = $false)]
        [int]$SelectedGroups = 0,

        [int]$RemovePassedFromGroups,

        [int]$AddPassedToGroups,

        [Parameter(Mandatory = $false)]
        [ValidateSet('true', 'false')]
        [string]$AllUsers = 'false',

        [Parameter(Mandatory = $false)]
        [ValidateSet('RELATIVE', 'SPECIFY_DATE', 'NO_END_DATE')]
        [string]$EndCampaignOption = 'SPECIFY_DATE',

        [switch]$Notifications
    )

    dynamicparam {
        if ($PSBoundParameters.ContainsKey('Notifications')) {
            $dynParamDictionary = [Management.Automation.RuntimeDefinedParameterDictionary]::new()
            $dynParam1 = [Management.Automation.RuntimeDefinedParameter]::new('TimeStamp', [int64], [Attribute[]]@(
                [Parameter]@{Position = 0}
            ))
            $dynParam2 = [Management.Automation.RuntimeDefinedParameter]::new('Enabled', [string], [Attribute[]]@(
                [Parameter]@{Position = 1}
                [ValidateSet]::new('true', 'false')
            ))
            $dynParam3 = [Management.Automation.RuntimeDefinedParameter]::new('MessageType', [string], [Attribute[]]@(
                [Parameter]@{Mandatory = $true; Position = 2}
                [ValidateSet]::new('welcome_email', 'notify_after_enrolled', 'past_due', 'notify_before_due', 'notify_on_completion')
            ))
            $dynParam4 = [Management.Automation.RuntimeDefinedParameter]::new('OffsetNumDays', [object], [Attribute[]]@(
                [Parameter]@{Position = 3}
            ))
            $dynParam5 = [Management.Automation.RuntimeDefinedParameter]::new('RescheduleOffset', [object], [Attribute[]]@(
                [Parameter]@{Position = 4}
            ))
            $dynParam6 = [Management.Automation.RuntimeDefinedParameter]::new('EmailTemplateId', [int], [Attribute[]]@(
                [Parameter]@{Position = 5}
            ))
            $dynParam7 = [Management.Automation.RuntimeDefinedParameter]::new('AdminEmailTemplateId', [object], [Attribute[]]@(
                [Parameter]@{Position = 6}
            ))
            $dynParam8 = [Management.Automation.RuntimeDefinedParameter]::new('ManagerEmailTemplateId', [object], [Attribute[]]@(
                [Parameter]@{Position = 7}
            ))
            $dynParam9 = [Management.Automation.RuntimeDefinedParameter]::new('DeliveryMethod', [string], [Attribute[]]@(
                [Parameter]@{Position = 8}
                [ValidateSet]::new('email')
            ))
            $dynParam10 = [Management.Automation.RuntimeDefinedParameter]::new('FallBackEmail', [string], [Attribute[]]@(
                [Parameter]@{Position = 9}
                [Validateset]::new('true', 'false')
            ))
            $dynParamDictionary.Add($dynParam1.Name, $dynParam1)
            $dynParamDictionary.Add($dynParam2.Name, $dynParam2)
            $dynParamDictionary.Add($dynParam3.Name, $dynParam3)
            $dynParamDictionary.Add($dynParam4.Name, $dynParam4)
            $dynParamDictionary.Add($dynParam5.Name, $dynParam5)
            $dynParamDictionary.Add($dynParam6.Name, $dynParam6)
            $dynParamDictionary.Add($dynParam7.Name, $dynParam7)
            $dynParamDictionary.Add($dynParam8.Name, $dynParam8)
            $dynParamDictionary.Add($dynParam9.Name, $dynParam9)
            $dynParamDictionary.Add($dynParam10.Name, $dynParam10)
            $dynParamDictionary
        }
    }
    begin {
        #TODO Add ability to provide multiple notifications. Currently, only one notification template is allowed.
        if ($Notifications.IsPresent) {
            # Instantiate all dynamic parameter values for Notifications
            $TimeStamp = $PSBoundParameters['TimeStamp']
            $Enabled = $PSBoundParameters['Enabled']
            $MessageType = $PSBoundParameters['MessageType']
            $OffsetNumDays = $PSBoundParameters['OffsetNumDays']
            $RescheduleOffset = $PSBoundParameters['RescheduleOffset']
            $EmailTemplateId = $PSBoundParameters['EmailTemplateId']
            $AdminEmailTemplateId = $PSBoundParameters['AdminEmailTemplateId']
            $ManagerEmailTemplateId = $PSBoundParameters['ManagerEmailTemplateId']
            $DeliveryMethod = $PSBoundParameters['DeliveryMethod']
            $FallBackEmail = $PSBoundParameters['FallBackEmail']

            $query = "{`"query`":`"mutation TrainingCampaignCreate(`$attributes: TrainingCampaignAttributes!, `$endCampaignOption: TrainingCampaignEnd!) {\n  trainingCampaignCreate(\n    attributes: `$attributes\n    endCampaignOption: `$endCampaignOption\n  ) {\n    node {\n      id\n    }\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"attributes`":{`"name`":`"$Name`",`"autoEnroll`":$AutoEnroll,`"startCampaignAtDate`":`"$StartCampaignAtDate`",`"startCampaignAtTime`":`"$StartCampaignAtTime`",`"endCampaignAtDate`":$EndCampaignAtDate,`"endCampaignAtTime`":$EndCampaignAtTime,`"timeZone`":`"$TimeZone`",`"enrollmentDuration`":$EnrollmentDuration,`"enrollmentDurationType`":`"$EnrollmentDurationType`",`"resetAutoEnrollments`":$ResetAutoEnrollments,`"allowPastDueCompletions`":$AllowPastDueCompletions,`"allowSurveys`":$AllowSurveys,`"allowSurveyComments`":$AllowSurveyComments,`"trackScores`":$TrackScores,`"selectedContent`":[`"PurchasedCourse:$SelectedContent`"],`"selectedGroups`":[$SelectedGroups],`"removePassedFromGroups`":[$RemovePassedFromGroups],`"addPassedToGroups`":[$AddPassedToGroups],`"allUsers`":$AllUsers,`"notifications`":[{`"timestamp`":$TimeStamp,`"enabled`":$Enabled,`"messageType`":`"$MessageType`",`"offsetNumDays`":$OffSetNumDays,`"rescheduleOffset`":$RescheduleOffset,`"emailTemplateId`":$EmailTemplateId,`"adminEmailTemplateId`":$AdminEmailTemplateId,`"managerEmailTemplateId`":$ManagerEmailTemplateId,`"deliveryMethod`":`"$DeliveryMethod`",`"fallbackEmail`":$FallBackEmail}]},`"endCampaignOption`":`"$EndCampaignOption`"}}"
        } else {
            $query = "{`"query`":`"mutation TrainingCampaignCreate(`$attributes: TrainingCampaignAttributes!, `$endCampaignOption: TrainingCampaignEnd!) {\n  trainingCampaignCreate(\n    attributes: `$attributes\n    endCampaignOption: `$endCampaignOption\n  ) {\n    node {\n      id\n    }\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"attributes`":{`"name`":`"$Name`",`"autoEnroll`":$AutoEnroll,`"startCampaignAtDate`":`"$StartCampaignAtDate`",`"startCampaignAtTime`":`"$StartCampaignAtTime`",`"endCampaignAtDate`":$EndCampaignAtDate,`"endCampaignAtTime`":$EndCampaignAtTime,`"timeZone`":`"$TimeZone`",`"enrollmentDuration`":$EnrollmentDuration,`"enrollmentDurationType`":`"$EnrollmentDurationType`",`"resetAutoEnrollments`":$ResetAutoEnrollments,`"allowPastDueCompletions`":$AllowPastDueCompletions,`"allowSurveys`":$AllowSurveys,`"allowSurveyComments`":$AllowSurveyComments,`"trackScores`":$TrackScores,`"selectedContent`":[`"PurchasedCourse:$SelectedContent`"],`"selectedGroups`":[$SelectedGroups],`"removePassedFromGroups`":[$RemovePassedFromGroups],`"addPassedToGroups`":[$AddPassedToGroups],`"allUsers`":$AllUsers,`"notifications`":[]},`"endCampaignOption`":`"$EndCampaignOption`"}}"
        }
    }
    process {
        Invoke-KB4WebRequest -Query $query
    }
}
