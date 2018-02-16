<#
.Synopsis
   Ajoute une liste d'alias à une mailbox existante
.DESCRIPTION
   Cette fonction permet d'ajouter une liste d'alias à une mailbox existante depuis un fichier CSV renseigné en paramètre
.EXAMPLE
   Add-MailboxAlias -Mailbox email_cible -Path "C:\fichier.csv"

   Le fichier CSV contient un alias par ligne, avec un ";" pour terminer la ligne
   Exemple:
   j.phumune@societe.ch;
   a.mahler@societe.ch;

#>
function Add-MailboxAlias
{
    [CmdletBinding()]
    Param
    (
        
        #Mailbox - alias de la boîte email cible (à laquelle nous ajoutons ces alias)
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]$Mailbox,
        #Path - chemin du fichier csv contenant la liste des alias à ajouter
        [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [string]$Path
    )
    
    Begin
    {
        #Si pas de fichier CSV précisé dans la commande, ouverture de la fenêtre de sélection
        if (!$Path) {
            [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
            $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
            $OpenFileDialog.Filter = "CSV (*csv)| *.csv"
            $OpenFileDialog.ShowDialog() | Out-Null
            $Path = $OpenFileDialog.FileName
        }
    }
    Process
    {
        #Récupération de l'objet Mailbox
        if (!($ObjMailbox = Get-Mailbox $Mailbox)){
            Write-Host "La boîte $Mailbox n'existe pas"
        }
        else {
            Write-Host "La boîte $Mailbox existe"
        
            #Import du fichier CSV et ajout des délégations pour chaque ligne
            Import-CSV $Path -Header EmailAddress -Delimiter ";" | Foreach-Object{
                $NewAlias = ($_.EmailAddress).ToString()
                Write-Host "Cible:" $ObjMailbox.PrimarySmtpAddress "| Ajout de l'alias:" $NewAlias
                Set-Mailbox -Identity $ObjMailbox.Alias -EmailAddresses @{Add=$NewAlias}       

            }
        }
    }
    End
    {
        Write-Host "C'est la fin du script mon coco!"
    }
    
}