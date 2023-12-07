function Get-Decode64 {
  [CmdletBinding()]
  Param (
    [Parameter(Mandatory = $true, Position = 0)][string]$text
  )

  PROCESS {
    Write-Output "-------"
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($text))
    Write-Output "-------"
  }
}