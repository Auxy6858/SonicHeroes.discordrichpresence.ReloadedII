# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/SonicHeroes.discordrichpresence/*" -Force -Recurse
dotnet publish "./SonicHeroes.discordrichpresence.csproj" -c Release -o "$env:RELOADEDIIMODS/SonicHeroes.discordrichpresence" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location