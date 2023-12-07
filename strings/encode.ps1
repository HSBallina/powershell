function Get-Encode64 {
  [CmdletBinding()]
  Param (
    [Parameter(Mandatory = $true, Position = 0)][string]$text
  )
  
  PROCESS {
    Write-Output "-------"
    [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($text))
    Write-Output "-------"
  }
}