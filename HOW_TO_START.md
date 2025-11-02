# How to Start the Backend Server

## ⚠️ Important: The Backend Server Must Be Running!

Just opening `http://localhost:5000` in your browser **won't start the server**. You need to run it from the terminal first.

## Step-by-Step Guide

### Option 1: Using PowerShell (Recommended)

1. **Open PowerShell** (or Terminal)

2. **Navigate to the backend folder:**
   ```powershell
   cd "C:\Users\Sarvesh Jain\OneDrive\Desktop\MAJOR PROJECT\Eventure\eventure-backend"
   ```

3. **Start the server:**
   ```powershell
   npm run dev
   ```

4. **You should see:**
   ```
   🚀 Server running on port 5000
   📡 Environment: development
   🔗 API available at http://localhost:5000/api/events
   ```

5. **Now** you can open `http://localhost:5000` in your browser!

### Option 2: Using the Startup Script

1. **Navigate to backend folder** in PowerShell
2. **Run the script:**
   ```powershell
   .\start-server.ps1
   ```

## Common Issues

### Issue 1: "npm: command not found"
**Solution:** Install Node.js from https://nodejs.org/

### Issue 2: MongoDB Connection Error
**Solution:** 
- Make sure MongoDB is running (if using local MongoDB)
- OR use MongoDB Atlas (free cloud database):
  1. Go to https://www.mongodb.com/cloud/atlas
  2. Create account and cluster
  3. Get connection string
  4. Update `.env` file with: `MONGO_URI=your-connection-string`

### Issue 3: Port 5000 Already in Use
**Solution:**
```powershell
# Find what's using port 5000
netstat -ano | findstr :5000

# Or change port in .env:
PORT=5001
```

### Issue 4: Server Crashes Immediately
**Check:**
1. Look at the error message in the terminal
2. Make sure `.env` file exists in `eventure-backend` folder
3. Make sure `node_modules` folder exists (run `npm install` if not)

## Testing if Server is Running

### Method 1: Browser
Open: `http://localhost:5000/health`

Should show: `{"success":true,"message":"Eventure API is running",...}`

### Method 2: PowerShell
```powershell
curl http://localhost:5000/health
```

### Method 3: Check Port
```powershell
netstat -ano | findstr :5000
```
If you see output, the server is running!

## What Should Happen

When you run `npm run dev`, you should see:

```
🚀 Server running on port 5000
📡 Environment: development
🔗 API available at http://localhost:5000/api/events
✅ MongoDB connected successfully (or error if MongoDB not running)
```

**Keep this terminal open** - the server runs as long as this terminal is running!

To stop the server, press `Ctrl + C` in the terminal.

## Quick Checklist

- [ ] Opened PowerShell/Terminal
- [ ] Navigated to `eventure-backend` folder
- [ ] Ran `npm run dev`
- [ ] Saw "Server running on port 5000" message
- [ ] Server terminal is still open
- [ ] Can access `http://localhost:5000/health` in browser

## Next Steps

Once backend is running:
1. Open **another** terminal window
2. Start the frontend:
   ```powershell
   cd "C:\Users\Sarvesh Jain\OneDrive\Desktop\MAJOR PROJECT\Eventure\eventure-frontend"
   npm run dev
   ```
3. Open `http://localhost:5173` in browser

## Need Help?

Share the error message you see when running `npm run dev` and I'll help you fix it!

