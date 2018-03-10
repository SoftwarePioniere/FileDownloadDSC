@{
    ModuleVersion     = "0.0.2";
    GUID              = "63148c2d-2be3-4626-b44b-ff05a665271d";
    Author            = "Tobias Boeker";
    CompanyName       = "Softwarepioniere GmbH & Co. KG";
    Copyright         = "(c) 2018 Softwarepioniere GmbH & Co. KG. Alle Rechte vorbehalten.";
    Description       = "PowerShellDSC File Downloader";
    PowerShellVersion = "4.0";
    CLRVersion        = "4.0";
    FunctionsToExport = "*";
    CmdletsToExport   = "*";
    DscResourcesToExport =  @('FileDownload');
}

