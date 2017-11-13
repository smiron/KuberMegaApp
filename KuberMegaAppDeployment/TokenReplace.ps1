param
(
    [Parameter(Mandatory=$true)][string]$filePath,
    [Parameter(Mandatory=$true)][string]$token,
    [Parameter(Mandatory=$true)][string]$tokenValue
)

Write-Output "Replacing $token with $tokenValue in '$filePath'"

try {
    (Get-Content $filePath).Replace($token, $tokenValue) | Set-Content $filePath
}
catch [System.Exception] {
    Write-Output $_
    Exit 1
}