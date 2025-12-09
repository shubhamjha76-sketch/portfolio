# Shubham Jha Portfolio - Cyber-Rave Gen-Z Theme

## Overview
A stunning, animated portfolio website for Shubham Jha built with React, TypeScript, Three.js, and GSAP. Features a dark cyber-rave aesthetic with neon colors (purple, cyan, green), 3D shader backgrounds, glitch text effects, and smooth animations.

## Recent Changes
- **December 2024**: Initial build with all 6 pages (Home, About, Skills, Projects, Experience, Contact)
- Implemented Three.js shader background with mouse-reactive distortion
- Added custom cursor with neon glow effects
- Created glass morphism navigation and components
- Built animated skill bars, project cards, and experience timeline
- Contact form with floating particle effects

## Project Architecture

### Frontend (client/)
- **Framework**: React 18 with TypeScript
- **Routing**: Wouter
- **Styling**: TailwindCSS with custom neon theme
- **Animations**: GSAP for timeline animations
- **3D Graphics**: Three.js with custom GLSL shaders
- **State Management**: TanStack Query

### Backend (server/)
- **Framework**: Express.js
- **Storage**: In-memory storage (MemStorage)
- **API**: Contact form submission endpoint

### Key Directories
```
client/src/
  components/       # Reusable components (Navbar, Footer, CustomCursor, etc.)
  pages/           # Page components (Home, About, Skills, Projects, Experience, Contact)
  hooks/           # Custom React hooks
  lib/             # Utility functions and query client
server/
  routes.ts        # API endpoints
  storage.ts       # Data storage interface
shared/
  schema.ts        # TypeScript types and Zod schemas
```

## Design System
- **Colors**: Neon purple (#b300ff), cyan (#00eaff), green (#7eff00)
- **Background**: Deep dark purple-black (#0c0c0f)
- **Typography**: Space Grotesk (headings), JetBrains Mono (code)
- **Effects**: Glass morphism, neon glows, glitch text, tilt cards

## User Preferences
- Dark mode only (cyber-rave theme)
- No light mode toggle needed
- Prefers bold animations and neon effects
- Custom cursor enabled by default

## Running the App
- Development: `npm run dev` (starts both frontend and backend)
- Frontend: Vite dev server on port 5000
- Backend: Express server integrated with Vite
