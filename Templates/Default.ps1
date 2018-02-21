###############################################################################################################
# Language     :  PowerShell 5.1
# Filename     :  
# Autor        :  tasseb (https://github.com/tasseb)
# Description  :  
# Repository   :  https://github.com/tasseb/Powershell-Exchange-Admin/--ENTERNAMEHERE--
###############################################################################################################

<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function Verb-Noun
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}