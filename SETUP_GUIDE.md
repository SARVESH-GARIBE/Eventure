# Eventure - Quick Setup Guide

## 🚀 Getting Started in 5 Minutes

### Step 1: Backend Setup

```bash
# Navigate to backend
cd eventure-backend

# Install dependencies
npm install

# Create .env file
echo "PORT=5000
MONGO_URI=mongodb://localhost:27017/eventure
NODE_ENV=development
FRONTEND_URL=http://localhost:5173" > .env

# Make sure MongoDB is running, then start server
npm run dev
```

✅ Backend should be running at `http://localhost:5000`

### Step 2: Frontend Setup

```bash
# Open a new terminal, navigate to frontend
cd eventure-frontend

# Install dependencies
npm install

# Create .env file (optional - defaults to localhost:5000)
echo "VITE_API_URL=http://localhost:5000/api" > .env

# Start development server
npm run dev
```

✅ Frontend should be running at `http://localhost:5173`

### Step 3: Test the Application

1. Open `http://localhost:5173` in your browser
2. You should see the event list page (empty if no events)
3. Click "Create Event" to add your first event
4. Use the search bar to filter events

## 📝 Important Notes

### MongoDB Setup

**Option 1: Local MongoDB**
- Install MongoDB locally
- Start MongoDB service
- Use connection string: `mongodb://localhost:27017/eventure`

**Option 2: MongoDB Atlas (Recommended for Production)**
- Create free account at [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
- Create cluster and database
- Get connection string
- Update `MONGO_URI` in `.env` file

### Environment Variables

**Backend (.env)**
```env
PORT=5000
MONGO_URI=mongodb://localhost:27017/eventure
NODE_ENV=development
FRONTEND_URL=http://localhost:5173
```

**Frontend (.env)**
```env
VITE_API_URL=http://localhost:5000/api
```

## 🐛 Troubleshooting

### Backend won't start
- Check if MongoDB is running
- Verify `.env` file exists and has correct values
- Check if port 5000 is available

### Frontend can't connect to backend
- Verify backend is running on port 5000
- Check `VITE_API_URL` in frontend `.env`
- Check browser console for CORS errors
- Verify `FRONTEND_URL` in backend `.env` matches frontend URL

### MongoDB connection error
- Verify MongoDB is running (if local)
- Check connection string in `.env`
- For Atlas: verify IP whitelist and credentials

## 📚 Next Steps

1. Read the detailed README files:
   - [Backend README](./eventure-backend/README.md)
   - [Frontend README](./eventure-frontend/README.md)
   - [Main README](./README.md)

2. Test the API endpoints using Postman or curl

3. Deploy to production:
   - Backend: Render (see backend README)
   - Frontend: Vercel (see frontend README)

## 🎯 Features to Test

- ✅ Create an event
- ✅ View event list
- ✅ Search events
- ✅ Filter by location
- ✅ View event details
- ✅ Check loading states
- ✅ Test error handling

Happy coding! 🚀
