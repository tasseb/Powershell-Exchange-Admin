###############################################################################################################
# Language     :  PowerShell 5.1
# Filename     :  ExchAdmin_ModuleManifest
# Autor        :  tasseb (https://github.com/tasseb)
# Description  :  Command that build the ExchAdmin module ExchAdmin.psd1
# Repository   :  https://github.com/tasseb/Powershell-Exchange-Admin/
################################################################################################################Path to the file ExchAdmin.psd1 you want to create$PSD1path = 'D:\PowerShell\Git_Repository\Powershell-Exchange-Admin\Module\ExchAdmin\ExchAdmin.psd1'New-ModuleManifest -Path $PSD1path -Author 'tasseb' `-Copyright '(c)2018 tasseb. All rights reserved.' -ModuleVersion 1.1 -Description "Helpfull functions and cmdlets for everyday Exchange administration" `-PowerShellVersion 5.1 -RootModule .\ExchAdmin.psm1