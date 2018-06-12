###############################################################################################################
# Language     :  PowerShell 5.1
# Filename     :  ExchAdmin.psm1
# Autor        :  tasseb (https://github.com/tasseb)
# Description  :  Powershell-Module to help Exchange admins
# Repository   :  https://github.com/tasseb/Powershell-Exchange-Admin/
###############################################################################################################

# Include functions which are outsourced in .ps1 extension
Get-ChildItem -Path "$PSScriptRoot\Functions" -Recurse | Where-Object {$_.Name.EndsWith(".ps1")} | ForEach-Object {. $_.FullName}


