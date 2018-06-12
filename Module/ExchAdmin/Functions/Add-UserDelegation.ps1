<#
.Synopsis
   Cette fonction permet d'ajouter une délégation sur des boîtes email Exchange avec le droit FullControl uniquement
.DESCRIPTION
   Cette fonction permet d'ajouter des délégations sur des boîtes email Exchange avec un accès complet à la boîte, mais sans la possibilité d'envoyer des emails depuis cette boîte.
   ATTENTION: l'utilisation des délégations est utile pour des boîtes emails génériques, mais n'est pas recommandée sur des boîtes d'utilisateur (pour des raisons légales notamment).
.PARAMETER Target 
   Ce paramètre est obligatoire et correspond à l'alias ou le nom de la boîte email que l'on souhaite déléguer à un utilisateur
.PARAMETER User
   Ce paramètre est obligatoire et correspond à l'alias ou le nom de l'utilisateur à qui l'on ajoute une délégation
.EXAMPLE
   Add-UserDelegation -Target contact -User jean.phumune
   Ajout d'une délégation sur la boîte contact pour l'utilisateur dont l'alias est jean.phumune
.EXAMPLE
   Add-UserDelegation -Target "Contact Mailbox" -User "Jean Phumune"
   Ajout d'une délégation sur la boîte contact pour l'utilisateur "Jean Phumune"
#>
function Add-UserDelegation
{
    [CmdletBinding()]
    Param
    (
        #Alias ou nom de la boîte email (générique) que nous souhaitons déléguer
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]$Target,

        #Alias ou nom de la boîte email (utilisateur) à qui nous allons ajouter une délégation
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [string]$User
    )

    Begin
    {
        Write-Verbose "Récupération des propriétés Name des valeurs retournées"
        $TargetName = Get-Mailbox $Target
        $UserName = Get-Mailbox $User
        Write-Verbose "Ajout d'une délégation de la boîte $Target pour l'utilisateur $User"
    }
    Process
    {
        #Full Access
        Write-Verbose "Ajout du full access sur la boîte $Target pour l'utilisateur $User"
        Add-MailboxPermission $TargetName.Name -User $UserName.Name -AccessRights FullAccess -InheritanceType All -AutoMapping $true

    }
    End
    {
        Write-Information "-------------------------------------------------------------------"

        #Nettoyage des variables paramètres de la fonction
        $Target = $null
        $User = $null
    }
}