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

    $queryCampaignValues = "{`"query`":`"query trainingCampaignByStatus(`$id: Int!, `$policyStatuses: [PolicyStatuses!]) {\n  trainingCampaign(id: `$id) {\n    name\n    status\n    startCampaignAtDate\n    startCampaignAtTime\n    endCampaignAtDate\n    endCampaignAtTime\n    autoEnroll\n    enrollmentDuration\n    enrollmentDurationType\n    timeZone\n    resetAutoEnrollments\n    allowPastDueCompletions\n    allowSurveys\n    allowSurveyComments\n    trackScores\n    selectedContent\n    selectedGroups\n    removePassedFromGroups\n    addPassedToGroups\n    endCampaignOption\n    allUsers\n    deliverTo\n    managedTrainingCampaign {\n      id\n    }\n    notifications {\n      id\n      enabled\n      messageType\n      offsetNumDays\n      rescheduleOffset\n      emailTemplateId\n      managerEmailTemplateId\n      adminEmailTemplateId\n      deliveryMethod\n      fallbackEmail\n    }\n  }\n  purchasedCourses(all: true, archived: true) {\n    nodes {\n      id\n      polymorphicId\n      title\n      duration\n      publishedAt\n      assessment\n      beta\n      retiringSoon\n      trainingCampaignBadge\n      retired\n      archived\n      storeItem {\n        __typename\n        ... on StoreItemInterface {\n          type\n        }\n      }\n      hidden\n      uploaded\n      alternatives {\n        id\n        uuid\n        title\n        status\n      }\n    }\n  }\n  policies(all: true, statuses: `$policyStatuses) {\n    nodes {\n      title\n      polymorphicId\n      publishedAt\n      archived\n    }\n  }\n  groups(all: true, permissionScope: TRAINING) {\n    nodes {\n      id\n      name\n      groupType\n    }\n  }\n}\n`",`"variables`":{`"id`":$CampaignId,`"policyStatuses`":[`"PUBLISHED`",`"ARCHIVED`"]}}"

    # Retrieve current training campaign values and pass them into the final query along with new notifications
    $campaignValues = (Invoke-KB4WebRequest -Query $queryCampaignValues).trainingCampaign
    $name = $campaignValues.name
    $autoEnroll = $campaignValues.autoEnroll.ToString().ToLower()

    # Forcing null values to a string if found
    if ($null -eq $campaignValues.startCampaignAtDate -or $campaignValues.startCampaignAtDate -eq 'null') {
        $startCampaignAtDate = 'null'
    } else {$startCampaignAtDate = $campaignValues.startCampaignAtDate}

    if ($null -eq $campaignValues.startCampaignAtTime -or $campaignValues.startCampaignAtTime -eq 'null') {
        $startCampaignAtTime = 'null'
    } else {$startCampaignAtTime = $campaignValues.startCampaignAtTime}

    if ($null -eq $campaignValues.endCampaignAtDate -or $campaignValues.endCampaignAtDate -eq 'null') {
        $endCampaignAtDate = 'null'
    } else {$endCampaignAtDate = $campaignValues.endCampaignAtDate}

    if ($null -eq $campaignValues.endCampaignAtTime -or $campaignValues.endCampaignAtTime -eq 'null') {
        $endCampaignAtTime = 'null'
    } else {$endCampaignAtTime = $campaignValues.endCampaignAtTime}

    $timeZone = $campaignValues.timeZone
    $enrollmentDuration = $campaignValues.enrollmentDuration
    $enrollmentDurationType = $campaignValues.enrollmentDurationType
    $resetAutoEnrollments = $campaignValues.resetAutoEnrollments.ToString().ToLower()
    $allowPastDueCompletions = $campaignValues.allowPastDueCompletions.ToString().ToLower()
    $allowSurveys = $campaignValues.allowSurveys.ToString().ToLower()
    $allowSurveyComments = $campaignValues.allowSurveyComments.ToString().ToLower()
    $trackScores = $campaignValues.trackScores.ToString().ToLower()
    $selectedContent = $campaignValues.selectedContent
    $selectedGroups = $campaignValues.selectedGroups
    $removePassedFromGroups = $campaignValues.removePassedFromGroups
    $addPassedToGroups = $campaignValues.addPassedToGroups
    $allUsers = $campaignValues.allusers.ToString().ToLower()

    $query = "{`"query`":`"mutation TrainingCampaignEdit(`$id: Int!, `$attributes: TrainingCampaignAttributes!, `$endCampaignOption: TrainingCampaignEnd!) {\n  trainingCampaignEdit(\n    id: `$id\n    attributes: `$attributes\n    endCampaignOption: `$endCampaignOption\n  ) {\n    node {\n      id\n    }\n    errors {\n      field\n      placeholders\n      reason\n    }\n  }\n}\n`",`"variables`":{`"id`":$CampaignId,`"attributes`":{`"name`":`"$name`",`"autoEnroll`":$autoEnroll,`"startCampaignAtDate`":`"$startCampaignAtDate`",`"startCampaignAtTime`":`"$startCampaignAtTime`",`"endCampaignAtDate`":$endCampaignAtDate,`"endCampaignAtTime`":$endCampaignAtTime,`"timeZone`":`"$timeZone`",`"enrollmentDuration`":$enrollmentDuration,`"enrollmentDurationType`":`"$enrollmentDurationType`",`"resetAutoEnrollments`":$resetAutoEnrollments,`"allowPastDueCompletions`":$allowPastDueCompletions,`"allowSurveys`":$allowSurveys,`"allowSurveyComments`":$allowSurveyComments,`"trackScores`":$trackScores,`"selectedContent`":[`"$selectedContent`"],`"selectedGroups`":[$selectedGroups],`"removePassedFromGroups`":[$removePassedFromGroups],`"addPassedToGroups`":[$addPassedToGroups],`"allUsers`":$allUsers,`"notifications`":[{`"timestamp`":$TimeStamp,`"enabled`":$Enabled,`"messageType`":`"$MessageType`",`"offsetNumDays`":$OffsetNumDays,`"rescheduleOffset`":$RescheduleOffset,`"emailTemplateId`":$EmailTemplateId,`"adminEmailTemplateId`":$AdminEmailTemplateId,`"managerEmailTemplateId`":$ManagerEmailTemplateId,`"deliveryMethod`":`"$DeliveryMethod`",`"fallbackEmail`":$FallBackEmail}]},`"endCampaignOption`":`"RELATIVE`"}}"

    Invoke-KB4WebRequest -Query $query
}
