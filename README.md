# FileDownloadDsc

File Downloader for PowerShellDSC

Usage
```
Configuration Sample1
{
    Import-DSCResource -ModuleName FileDownloadDSC

    Node localhost
    {
        FileDownload MyReadme
        {
            FileName = "c:\temp\README.md"
            Url = "https://raw.githubusercontent.com/SoftwarePioniere/FileDownloadDSC/master/README.md"
        }
    }
}

```

## Development

```
#adding Gallery API Key to Environment
$env:PS_GALLERY_API_KEY = "XXX"

#list module path
$env:PSModulePath -split ';'

#adding local folder to PSModulePath
$env:PSModulePath = $env:PSModulePath + ";$(Get-Location)"

Publish-Module -Name FileDownloadDSC -NuGetApiKey $env:PS_GALLERY_API_KEY 

```

## Links

https://hodgkins.io/five-tips-for-writing-dsc-resources-in-powershell-version-5
https://kevinmarquette.github.io/2017-05-27-Powershell-module-building-basics/?utm_source=blog&utm_medium=blog&utm_content=psrepository
