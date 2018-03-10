function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [Parameter(Mandatory = $true)] [String] $FileName,
        [Parameter(Mandatory = $true)] [string] $Url
    )

    Write-Verbose 'Start Get-TargetResource'
    Write-Verbose "FileName: $FileName"
    Write-Verbose "Url: $Url"

    $fileExists=Test-Path $FileName

    $returnValue = @{
        FileName = $FileName
        FileExists = $fileExists
    }

    $returnValue
}

function Set-TargetResource
{
    [CmdletBinding(SupportsShouldProcess = $true)]
    param
    (
        [Parameter(Mandatory = $true)] [String] $FileName,
        [Parameter(Mandatory = $true)] [string] $Url
    )
    Write-Verbose 'Start Set-TargetResource'
    Write-Verbose "FileName: $FileName"
    Write-Verbose "Url: $Url"

    Write-Verbose 'Invoking WebRequest'
    Invoke-WebRequest $Url -OutFile $FileName

    $fileExists=Test-Path $FileName

    Write-Verbose -Message ( @(
            "$($MyInvocation.MyCommand): "
            $($localizedData.TestingFileExists -f $FileName,$fileExists)
        ) -join '' )


}

function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
        [Parameter(Mandatory = $true)] [String] $FileName,
        [Parameter(Mandatory = $true)] [string] $Url
    )

    Write-Verbose 'Start Test-TargetResource'
    Write-Verbose "FileName: $FileName"
    Write-Verbose "Url: $Url"

    $fileExists=Test-Path $FileName

    Write-Verbose "File: $File Exists: $fileExists"

    return $fileExists
}

Export-ModuleMember -Function *-TargetResource
