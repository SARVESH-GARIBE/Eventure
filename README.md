# Eventure Frontend

Frontend application for Eventure - Mini Event Discovery App built with React, TypeScript, Vite, and Tailwind CSS.

## 📋 Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Setup & Installation](#setup--installation)
- [Environment Variables](#environment-variables)
- [Features Breakdown](#features-breakdown)
- [Deployment](#deployment)
- [Challenges & Solutions](#challenges--solutions)

## ✨ Features

- 🎯 Event discovery with search and filters
- 📱 Responsive design (mobile-first)
- 🎨 Modern UI with Tailwind CSS
- 🔍 Real-time search by title, description, and location
- 📍 Optional distance calculation using geolocation
- 🎉 Toast notifications for user feedback
- ⚡ Fast loading with Vite
- 🛡️ TypeScript for type safety

## 🛠️ Tech Stack

- **React 18** - UI library
- **TypeScript** - Type-safe JavaScript
- **Vite** - Build tool and dev server
- **React Router** - Client-side routing
- **Axios** - HTTP client
- **Tailwind CSS** - Utility-first CSS framework
- **React Hot Toast** - Toast notifications

## 🚀 Setup & Installation

### Prerequisites

- Node.js (v18 or higher)
- npm or yarn
- Backend API running (see [eventure-backend](../eventure-backend/README.md))

### Installation Steps

1. **Navigate to the frontend directory:**
   ```bash
   cd eventure-frontend
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Create a `.env` file** (optional):
   ```bash
   VITE_API_URL=http://localhost:5000/api
   ```

4. **Start the development server:**
   ```bash
   npm run dev
   ```

   The app will open at `http://localhost:5173`

5. **Build for production:**
   ```bash
   npm run build
   ```

   The production build will be in the `dist/` directory.

6. **Preview production build:**
   ```bash
   npm run preview
   ```

## 🔐 Environment Variables

Create a `.env` file in the root directory:

```env
# Backend API URL
VITE_API_URL=http://localhost:5000/api

# For production, use your deployed backend URL:
# VITE_API_URL=https://your-backend.onrender.com/api
```

## 📱 Features Breakdown

### 1. Event List Page (`/`)

- Displays all events in a responsive grid
- Search bar for filtering by title/description
- Location filter
- Optional distance calculation (requires location permission)
- Loading and error states
- Empty state when no events found

### 2. Event Detail Page (`/events/:id`)

- Full event information
- Formatted date and time
- Participant count with progress bar
- Location information
- Back navigation
- Loading and error states

### 3. Create Event Page (`/create`)

- Form with validation
- Real-time input validation
- Required fields marked with *
- Date picker for event date/time
- Success/error notifications
- Cancel button to return to events list

### 4. Navigation

- Sticky header
- Brand logo/name
- Navigation links
- "Create Event" button

## 🚢 Deployment

### Deploying to Vercel

1. **Install Vercel CLI** (optional):
   ```bash
   npm i -g vercel
   ```

2. **Deploy:**
   ```bash
   vercel
   ```

   Or connect your GitHub repository to Vercel:
   - Go to [vercel.com](https://vercel.com)
   - Import your repository
   - Configure build settings:
     - Build Command: `npm run build`
     - Output Directory: `dist`
   - Add environment variable:
     - `VITE_API_URL` - Your backend API URL

3. **Update backend CORS** to allow your Vercel domain

### Alternative: Netlify

1. Build the project: `npm run build`
2. Deploy the `dist` folder to Netlify
3. Add environment variables in Netlify dashboard
4. Update backend CORS settings

## 💡 Challenges & Solutions

### Challenge 1: Distance Calculation
**Problem:** Calculating distance between user location and event locations.

**Solution:** 
- Used browser Geolocation API to get user coordinates
- Implemented Haversine formula for distance calculation
- Created `geocodeLocation()` function placeholder for future geocoding API integration
- Made distance feature optional (gracefully fails if location is denied)

### Challenge 2: State Management
**Problem:** Managing search/filter state across components.

**Solution:** Used React's built-in state management with `useState` and passed props down. For a larger app, Context API or a state management library would be better.

### Challenge 3: Type Safety with API Responses
**Problem:** Ensuring type safety when consuming API responses.

**Solution:** Created TypeScript interfaces matching backend models and API response structures in `src/types/event.ts`.

### Challenge 4: Loading States
**Problem:** Providing good UX during API calls.

**Solution:** Implemented loading spinners, error messages, and empty states for all data-fetching components.

### Challenge 5: Responsive Design
**Problem:** Making the app work well on all screen sizes.

**Solution:** Used Tailwind CSS's responsive utilities with mobile-first approach. Grid layouts adapt from 1 column (mobile) to 3 columns (desktop).

## 🤖 AI Tools Used

- **ChatGPT/Claude** - Component structure, React patterns, and styling guidance
- **GitHub Copilot** - Code completion and React hooks
- **Tailwind CSS Documentation** - Utility classes and responsive design
- **React Documentation** - Best practices and hooks

## 📝 Project Structure

```
eventure-frontend/
├── src/
│   ├── components/
│   │   ├── EventCard.tsx        # Event card component
│   │   ├── EventList.tsx        # Events list with search
│   │   ├── EventDetail.tsx      # Single event detail page
│   │   └── CreateEventForm.tsx  # Create event form
│   ├── services/
│   │   └── api.ts              # API service functions
│   ├── types/
│   │   └── event.ts            # TypeScript type definitions
│   ├── utils/
│   │   └── distance.ts         # Distance calculation utilities
│   ├── App.tsx                 # Main app component with routing
│   ├── main.tsx                # React entry point
│   └── index.css               # Global styles and Tailwind
├── index.html
├── package.json
├── tailwind.config.js
├── vite.config.ts
├── tsconfig.json
└── README.md
```

## 🎨 Styling

The app uses Tailwind CSS with custom configuration:

- **Primary Color**: Blue (`primary-600`)
- **Card Design**: White cards with shadow and hover effects
- **Responsive Breakpoints**: 
  - Mobile: Default (< 768px)
  - Tablet: `md:` (≥ 768px)
  - Desktop: `lg:` (≥ 1024px)

### Custom CSS Classes

Defined in `src/index.css`:
- `.btn-primary` - Primary button style
- `.btn-secondary` - Secondary button style
- `.card` - Card container style
- `.input-field` - Input field style

## 🔧 Development

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint

### Code Style

- TypeScript strict mode enabled
- ESLint for code quality
- Functional components with hooks
- Meaningful component and variable names
- Comments for complex logic

## 📄 License

ISC

---

Built with ❤️ for Slanup Internship Challenge
