# Define database connection parameters
$onpremServer = "CPI-1235-Prod"
$onpremDatabase = "BIDA"
$onpremUser = "USERTEST"
$onpremPassword = "PAssword*"


$azureServer = "AzureTest.database.windows.net"
$azureDatabase = "ERPData"
$azureUser = "Userhere"
$azurePassword = "PasswordHere"


# Function to Test SQL Connection
function Test-SqlConnection {
    param (
        [string]$Server, 
        [string]$Database, 
        [string]$User, 
        [string]$Password
    )
    
    # Add TrustServerCertificate=True to ignore SSL certificate validation errors
    $connectionString = "Server=$Server;Database=$Database;User ID=$User;Password=$Password;Encrypt=True;TrustServerCertificate=True;Connection Timeout=5;"
    
    try {
        $conn = New-Object System.Data.SqlClient.SqlConnection
        $conn.ConnectionString = $connectionString
        $conn.Open()
        Write-Host "✅ Successfully connected to $Database on $Server" -ForegroundColor Green
        $conn.Close()
    } catch {
        Write-Host "❌ Failed to connect to $Database on $Server" -ForegroundColor Red
        Write-Host "Error: $_"
    }
}

# Test Connections
Write-Host "🔄 Testing On-Premise Database Connection..."
Test-SqlConnection -Server $onpremServer -Database $onpremDatabase -User $onpremUser -Password $onpremPassword

Write-Host "`n🔄 Testing Azure SQL Database Connection..."
Test-SqlConnection -Server $azureServer -Database $azureDatabase -User $azureUser -Password $azurePassword
