$cred = Get-Credential -Message "Enter domain credentials for remote uninstall and install."

$installer = "\\CPI-PXA-F5RM-37\Crystal\CR13SP34MSI32_0-80007712 (32 bits).MSI"

Write-Host "Processing CPI-PXA-F5RM-02..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-02 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-04..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-04 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-05..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-05 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-06..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-06 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-30..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-30 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-31..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-31 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-32..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-32 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-33..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-33 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-34..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-34 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-35..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-35 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-36..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-36 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-37..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-37 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-38..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-38 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-39..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-39 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-41..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-41 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-90..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-90 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s

Write-Host "Processing CPI-PXA-F5RM-91..." -ForegroundColor Cyan
$s = New-PSSession -ComputerName CPI-PXA-F5RM-91 -Credential $cred
Invoke-Command -Session $s -ScriptBlock {
    $productName = "SAP Crystal Reports runtime engine for .NET Framework (32-bit)"
    $product = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $productName }
    if ($product) {
        Write-Host "Uninstalling $productName..." -ForegroundColor Yellow
        $product.Uninstall() | Out-Null
        Start-Sleep -Seconds 10
    } else {
        Write-Host "$productName not found." -ForegroundColor Gray
    }
}

# Install new Crystal Reports runtime
Invoke-Command -Session $s -ScriptBlock {
    $msiPath = $using:installer
    if (Test-Path $msiPath) {
        Write-Host "Installing Crystal Reports..." -ForegroundColor Green
        Start-Process "msiexec.exe" -ArgumentList "/i `"$msiPath`" /quiet /norestart" -Wait
    } else {
        Write-Host "Installer not found at $msiPath" -ForegroundColor Red
    }
}

Remove-PSSession $s
