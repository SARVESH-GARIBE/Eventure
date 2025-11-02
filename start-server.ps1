# PowerShell script to start the Eventure backend server
# Run this script to start the server

Write-Host "🚀 Starting Eventure Backend Server..." -ForegroundColor Cyan
Write-Host ""

# Check if .env file exists
if (-not (Test-Path .env)) {
    Write-Host "⚠️  Warning: .env file not found!" -ForegroundColor Yellow
    Write-Host "Creating .env file with default values..." -ForegroundColor Yellow
    
    $envContent = @"
PORT=5000
MONGO_URI=mongodb://localhost:27017/eventure
NODE_ENV=development
FRONTEND_URL=http://localhost:5173
"@
    
    $envContent | Out-File -FilePath .env -Encoding utf8
    Write-Host "✅ Created .env file" -ForegroundColor Green
    Write-Host ""
}

# Check if node_modules exists
if (-not (Test-Path node_modules)) {
    Write-Host "📦 Installing dependencies..." -ForegroundColor Cyan
    npm install
    Write-Host ""
}

# Check if MongoDB is accessible (optional check)
Write-Host "💡 Make sure MongoDB is running or MongoDB Atlas is configured" -ForegroundColor Yellow
Write-Host ""

# Start the server
Write-Host "🔧 Starting server..." -ForegroundColor Cyan
Write-Host ""
npm run dev

