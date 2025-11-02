# Troubleshooting Network Errors

## Common Network Error Solutions

### 1. Backend Server Not Running

**Problem:** "Cannot connect to the backend server" or "Network Error"

**Solution:**
1. Make sure the backend server is running:
   ```powershell
   cd eventure-backend
   npm run dev
   ```
   
2. You should see:
   ```
   🚀 Server running on port 5000
   ✅ MongoDB connected successfully
   ```

3. Test the backend directly:
   - Open browser: `http://localhost:5000/health`
   - Should return: `{"success":true,"message":"Eventure API is running"}`

### 2. MongoDB Not Connected

**Problem:** Backend crashes with MongoDB connection error

**Solution:**
- **Option A: Local MongoDB**
  1. Install MongoDB locally
  2. Start MongoDB service:
     ```powershell
     # Windows - check if MongoDB service is running
     Get-Service MongoDB
     ```
  3. Update `.env` in `eventure-backend`:
     ```
     MONGO_URI=mongodb://localhost:27017/eventure
     ```

- **Option B: MongoDB Atlas (Recommended)**
  1. Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
  2. Create free account and cluster
  3. Get connection string
  4. Update `.env`:
     ```
     MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/eventure
     ```
  5. Whitelist your IP (or use `0.0.0.0/0` for development)

### 3. Port Already in Use

**Problem:** Backend can't start - port 5000 already in use

**Solution:**
1. Find what's using port 5000:
   ```powershell
   netstat -ano | findstr :5000
   ```
2. Kill the process or change port in `.env`:
   ```
   PORT=5001
   ```
3. Update frontend `.env` to match:
   ```
   VITE_API_URL=http://localhost:5001/api
   ```

### 4. CORS Errors

**Problem:** "CORS policy" error in browser console

**Solution:** 
- The CORS configuration has been updated to allow all origins in development
- Make sure `FRONTEND_URL` in backend `.env` matches your frontend URL

### 5. Wrong API URL

**Problem:** Frontend can't find the backend

**Solution:**
1. Check frontend `.env` file exists in `eventure-frontend`:
   ```
   VITE_API_URL=http://localhost:5000/api
   ```
2. Make sure there's no typo in the URL
3. Restart the frontend server after changing `.env`

### 6. Check Browser Console

**Steps:**
1. Open browser DevTools (F12)
2. Go to Console tab
3. Look for red error messages
4. Go to Network tab
5. Try making a request and see what fails

### 7. Verify Both Servers Running

**Terminal 1 (Backend):**
```powershell
cd eventure-backend
npm run dev
# Should see: 🚀 Server running on port 5000
```

**Terminal 2 (Frontend):**
```powershell
cd eventure-frontend
npm run dev
# Should see: Local: http://localhost:5173/
```

### 8. Test Backend API Directly

Use curl or browser to test:

```powershell
# Health check
curl http://localhost:5000/health

# Get events
curl http://localhost:5000/api/events
```

Or open in browser:
- `http://localhost:5000/health`
- `http://localhost:5000/api/events`

### 9. Check Environment Variables

**Backend `.env` (in `eventure-backend` folder):**
```
PORT=5000
MONGO_URI=mongodb://localhost:27017/eventure
NODE_ENV=development
FRONTEND_URL=http://localhost:5173
```

**Frontend `.env` (in `eventure-frontend` folder):**
```
VITE_API_URL=http://localhost:5000/api
```

**Important:** After changing `.env` files, restart the servers!

### 10. Still Not Working?

1. Check browser console for specific error messages
2. Check backend terminal for error logs
3. Verify MongoDB is accessible
4. Try restarting both servers
5. Clear browser cache (Ctrl+Shift+Delete)

## Quick Diagnostic Commands

```powershell
# Check if backend is running
curl http://localhost:5000/health

# Check if frontend is running
curl http://localhost:5173

# Check MongoDB connection (in backend terminal)
# Should see: ✅ MongoDB connected successfully
```

## Still Stuck?

Check the console logs in:
1. **Browser Console** (F12 → Console)
2. **Backend Terminal** (where you ran `npm run dev`)
3. **Frontend Terminal** (where you ran `npm run dev`)

Share the specific error message you see!
