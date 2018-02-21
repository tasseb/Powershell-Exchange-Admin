# Powershell-Exchange-Admin

Collection of useful cmdlets I use to administrate Exchange

## Description

N/A (by the time...)

## Module

### How to install the module?

N/A (to be defined)

### Available functions

**Mailbox delegation**

| Function | Description | Help |
| :--- | :--- | :---: |
| [Add-Delegation](Module/ExchAdmin/Functions/Add-Delegation.ps1) | Add a delegation (Full Access) on a mailbox | [:book:](Documentation/Functions/Add-Delegation.md) |
| [Add-DelegationCSV](Module/ExchAdmin/Functions/Add-DelegationCSV.ps1) | Add a list of delegations (Full Access) on one or multiple mailboxes from a CSV File | [:book:](Documentation/Functions/Add-DelegationCSV.md) |
| [Get-DelegationList](Module/ExchAdmin/Functions/Get-Delegation.ps1) | Get a list of delegation on a mailbox | [:book:] (Documentation/Functions/Get-Delegation.md) |
| [Remove-Delegation](Module/ExchAdmin/Functions/Remove-Delegation.ps1) | Remove a delegation on a mailbox | [:book:](Documentation/Functions/Remove-Delegation.md) |
| [Remove-DelegationCSV](Module/ExchAdmin/Functions/Remove-DelegationCSV.ps1) | Remove a list of delegations on one or multiple mailboxes from a CSV File | [:book:](Documentation/Functions/Remove-DelegationCSV.md) |

**Mailbox Alias**

| Function | Description | Help |
| :--- | :--- | :---: |
| [add-mailboxalias](Module/ExchAdmin/Functions/Add-MailboxAlias.ps1) | Add a list of aliases on an existing mailbox from a CSV File | [:book:](Documentation/Functions/Add-MailboxAlias.md) |
| [Remove-MailboxAlias](Module/ExchAdmin/Functions/Remove-MailboxAlias.ps1) | Add a list of aliases on an existing mailbox from a CSV File | [:book:](Documentation/Functions/Remove-MailboxAlias.md) |


**Shared Mailbox**

| Function | Description | Help |
| :--- | :--- | :---: |
| [New-SharedBAL](Module/ExchAdmin/Functions/New-SharedBAL.ps1) | Create a Shared Mailbox from a CSV File | [:book:](Documentation/Functions/New-SharedBAL.md) |

**Miscellaneous**

| Function | Description | Help |
| :--- | :--- | :---: |
| [Get-UserInfo](Module/ExchAdmin/Functions/Get-UserInfo.ps1) | Return a list of informations about the AD user put in paramater | [:book:](Documentation/Functions/Get-UserInfo.md) |
| [List-GroupMember](Module/ExchAdmin/Functions/List-GroupMember.ps1) | Return a list of user, members of the group specified in paramter  | [:book:](Documentation/Functions/List-GroupMember.md) |