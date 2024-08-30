# 检查是否以管理员权限运行
$IsAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-NOT $IsAdmin) {
    # 如果不是管理员权限，启动一个新的PowerShell实例
    Start-Process powershell.exe "-File `"$($MyInvocation.MyCommand.Definition)`"" -Verb RunAs
    exit
}

# 管理员权限下执行的代码
Write-Host "running script as admin."
# 在这里添加你的代码
Read-Host