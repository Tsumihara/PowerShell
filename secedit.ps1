$secedit = “https://raw.githubusercontent.com/Tsumihara/PowerShell/refs/heads/main/secedit.cfg”
Invoke-WebRequest $secedit -OutFile C:\secedit.cfg
secedit /configure /db c:\windows\security\local.sdb /cfg "C:\secedit.cfg"
Set-ExecutionPolicy RemoteSigned
Install-Module -Name PSWindowsUpdate -Force
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll
