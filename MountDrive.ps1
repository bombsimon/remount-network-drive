For ( $i = 3; $i -gt 0; $i-- ) {
    $error.clear()
    
    $MappedDrives = Get-SmbMapping | where -property Status -Value Unavailable -EQ | select LocalPath,RemotePath

    if ( @($MappedDrives).Length -lt 1 ) {
        Write-Host "No unavailable network drivers to mount, exiting"
        break
    }

    foreach( $MappedDrive in $MappedDrives ) {
        try {
            New-SmbMapping -LocalPath $MappedDrive.LocalPath -RemotePath $MappedDrive.RemotePath -Persistent $True
        }
        catch {
            Write-Host "Shared folder connection error: $MappedDrive.RemotePath to drive $MappedDrive.LocalPath"
        }
    }

    if ( $error.Count -eq 0 -Or $i -eq 0 ) {
        break
    }

    Start-Sleep -Seconds 30
}
