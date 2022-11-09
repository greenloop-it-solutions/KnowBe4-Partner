#
# Module manifest for module 'KnowBe4-Partner'
#
# Generated by: Terry Wilson
#
# Generated on: 11/1/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = '.\KnowBe4-Partner.psm1'

# Version number of this module.
ModuleVersion = '0.1.0'

# Supported PSEditions
CompatiblePSEditions = 'Desktop', 'Core'

# ID used to uniquely identify this module
GUID = '354ade59-9ca0-45d9-8b68-5326116f6537'

# Author of this module
Author = 'Terry Wilson'

# Company or vendor of this module
CompanyName = 'GreenLoop IT Solutions'

# Copyright statement for this module
Copyright = '(c) Terry Wilson. All rights reserved.'

# Description of the functionality provided by this module
Description = 'A PowerShell Module for the KnowBe4 Partner Portal'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Connect-KB4PartnerAccount',
    'Add-KB4TrainingNotification',
    'Get-KB4TrainingCampaignForm',
    'Get-KB4NotificationTemplate',
    'Get-KB4NotificationTemplateCategory',
    'Get-KB4TrainingCampaign',
    'New-KB4TrainingCampaign',
    'New-KB4PhishingCampaign'
    'Remove-KB4TrainingCampaign',
    'Remove-KB4PhishingCampaign',
    'Disconnect-KB4ClientSession',
    'Get-KB4ManagedAccount',
    'Get-KB4AllowedDomain',
    'Get-KB4AccountInfo',
    'Get-KB4PhishingDomain',
    'Get-KB4PhishingCampaign',
    'Get-KB4PhishingCampaignForm',
    'Set-KB4ShowHidePhishingDomain',
    'Set-KB4ClientContext'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('KnowBe4', 'API', 'Security Awareness Training', 'SAT')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/greenloop-it-solutions/KnowBe4-Partner/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/greenloop-it-solutions/KnowBe4-Partner'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

