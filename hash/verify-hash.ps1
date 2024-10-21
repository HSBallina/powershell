function Test-Hash {
    [CmdletBinding()]
    Param (
      [Parameter(Mandatory = $true, Position = 0)][string]$file,
      [Parameter(Mandatory = $true, Position = 1)][string]$hash
    )
    
    PROCESS {
      Write-Output "-------"
      (Get-FileHash $file -Algorithm SHA512).Hash -eq $hash
      Write-Output "-------"
    }
  }