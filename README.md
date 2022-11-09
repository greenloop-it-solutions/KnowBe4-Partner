<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/greenloop-it-solutions/KnowBe4-Partner">
    <img src="Images/KB4-Logo.svg" alt="Logo" width="600" height="200">
  </a>

<h2 align="center">KnowBe4 Partner</h2>

  <p align="center">
    A PowerShell Module for the <a href="https://training.knowbe4.com/ui/management/login"><strong>KnowBe4 Partner Portal</strong></a>
    <br />
    <a href="https://github.com/greenloop-it-solutions/KnowBe4-Partner/blob/master/KnowBe4-Partner.md"><strong>Explore the docs »</strong></a>
    <br />
  </p>
</div>

<!-- PROJECT SHIELDS -->
<div align="center">

[![Forks][forks-shield]][forks-url] [![Issues][issues-shield]][issues-url] [![MIT License][license-shield]][license-url] [![PS Gallery][ps-shield]][ps-url]

</div>


<!-- REPORT & REQUEST -->
<p align="center">
<a href="https://github.com/greenloop-it-solutions/KnowBe4-Partner/issues">Report Bug</a>
    ·
    <a href="https://github.com/greenloop-it-solutions/KnowBe4-Partner/issues">Request Feature</a>
</p>

<!-- ABOUT THE PROJECT -->
## About

The KnowBe4 Partner module was created to interact with undocumented API/GraphQL calls to streamline and automate processes. This module is in no way complete and is currently `in progress`!


<!-- GETTING STARTED -->
## Getting Started

This module currently uses SAML Single Sign-On authentication and has only been tested with Azure as the Identity Provider. This should work with other providers that return a SAML response.

The [PS-SAML-Interactive](https://github.com/allynl93/PS-SAML-Interactive) module is currently used for obtaining a SAML response.

### Installation

```powershell
Install-Module -Name 'KnowBe4-Partner'
```


<!-- USAGE EXAMPLES -->
## Usage

Run the initial connect command:

```powershell
Connect-KB4PartnerAccount -EmailAddress 'kb4admin@contoso.com'
```

_For a complete list of commands, please refer to the [documentation](https://github.com/greenloop-it-solutions/KnowBe4-Partner/blob/master/KnowBe4-Partner.md)_.

## Example 1

Create a remedial training campaign:

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
## Example 2

Create a phishing campaign:

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

<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/CoolFeature`)
3. Commit your Changes (`git commit -m 'Add some CoolFeature'`)
4. Push to the Branch (`git push origin feature/CoolFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[forks-shield]: https://img.shields.io/github/forks/greenloop-it-solutions/KnowBe4-Partner?color=%2344d62c&logo=GitHub
[forks-url]: https://github.com/greenloop-it-solutions/KnowBe4-Partner/network/members
[issues-shield]: https://img.shields.io/github/issues/greenloop-it-solutions/KnowBe4-Partner?color=%2344d62c&logo=GitHub
[issues-url]: https://github.com/greenloop-it-solutions/KnowBe4-Partner/issues
[license-shield]: https://img.shields.io/github/license/greenloop-it-solutions/KnowBe4-Partner?color=%2344d62c&label=license&logo=GitHub
[license-url]: https://github.com/greenloop-it-solutions/KnowBe4-Partner/blob/main/LICENSE
[ps-shield]: https://img.shields.io/powershellgallery/v/KnowBe4-Partner?color=%2344d62c&label=PS%20Gallery&logo=powershell&logoColor=white
[ps-url]: https://www.powershellgallery.com/packages/KnowBe4-Partner