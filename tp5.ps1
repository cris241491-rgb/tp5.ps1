for ($i = 1; $i -le 3; $i++) {
    Write-Host "--- Iteracion $i ---" -ForegroundColor Yellow
    Get-NetAdapter | Where-Object { $_.Status -eq "Up" }
    
    $fechaActual = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "Fecha y hora de verificacion: $fechaActual"
    
    if ($i % 2 -eq 0) {
        Write-Host "Evaluacion: La iteracion $i es PAR." -ForegroundColor Cyan
    } else {
        Write-Host "Evaluacion: La iteracion $i es IMPAR." -ForegroundColor Magenta
    }
    
    Write-Host ""
    Start-Sleep -Seconds 1
}

Write-Host "El monitoreo ha concluido con exito." -ForegroundColor Green