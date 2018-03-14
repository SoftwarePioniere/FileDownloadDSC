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


Sample1
Start-DscConfiguration .\Sample1 -Wait -Force