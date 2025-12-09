# Design Guidelines: Cyber-Rave Gen-Z Portfolio

## Design Approach
**Reference-Based Approach**: Drawing inspiration from experimental digital experiences, combining brutalist design principles with 90s rave culture and modern cyber aesthetics. Think Awwwards-winning portfolios meets neon underground club visuals.

## Core Design Principles
1. **Cyber-Rave Brutalism**: Bold, unapologetic design with neon accents and glitch aesthetics
2. **Immersive 3D**: Shader-powered backgrounds and interactive particle systems
3. **Fluid Motion**: Smooth transitions and micro-interactions throughout
4. **Neon Overload**: Strategic use of glows, flickers, and chromatic effects

## Color Palette
- **Primary Dark**: `#0c0c0f`, `#111`, `#0f0d24` (backgrounds)
- **Neon Accents**: Purple `#b300ff`, Cyan `#00eaff`, Toxic Green `#7eff00`
- **Implementation**: Heavy use of neon glows, gradient mixing, and blur effects for depth

## Typography
- **Headings**: Bold, oversized fonts with glitch/flicker animations on hero
- **Body**: Clean, readable sans-serif with high contrast against dark backgrounds
- **Special Effects**: Chromatic aberration on hover, neon text-shadow glows
- **Hierarchy**: H1 (hero name), H2 (section headers with distortion), body (standard weight)

## Layout System
- **Spacing**: Tailwind units of 4, 8, 12, 16 for consistent rhythm
- **Hero**: Full viewport (100vh) with Three.js shader background
- **Content Sections**: Contained max-width (max-w-7xl) with generous padding (py-20)
- **Grid Systems**: Asymmetric layouts for skills/projects, timeline layouts for experience

## Component Library

**Navigation**
- Fixed top navbar with glass morphism background blur
- Neon underline active states
- Smooth scroll anchoring

**Custom Cursor**
- Outer glow ring (20px) that scales on hover
- Inner dot (4px)
- Color shifts to match neon accents on interactive elements

**Hero Section**
- Full-screen Three.js shader background with noise + particle distortion
- Centered name + role with glitch text animation
- Dual CTA buttons with neon borders and blur backgrounds

**Project Cards**
- 3D tilt effect on hover
- Neon border glow (2px)
- Glass morphism panels with backdrop-blur
- Mini Three.js canvas activation on hover

**Skill Grid**
- 3-4 column responsive grid
- Category grouping with visual separators
- Hover distortion effects and color shifts

**Timeline (About/Experience)**
- Vertical layout with connecting neon lines
- Animated entry with GSAP stagger
- Circular nodes with pulse effects

**Contact Form**
- Neon-styled inputs with glow focus states
- Floating particle background layer
- Glass morphism container

## Animations
- **Page Transitions**: Barba.js fade → blur → neon streak on navigation
- **Entry Animations**: Framer Motion slide-up with stagger on content sections
- **Micro-interactions**: Subtle scale/glow on hover, flicker effects on headers
- **Loader**: Rave-style typography with noise glitch during initial load
- **Background**: Continuous shader animation with mouse-reactive distortion

## Images
No traditional hero images - using Three.js shader visuals instead. Project cards may include thumbnail images with neon border treatments.

## Accessibility
- Maintain readable contrast ratios despite dark theme
- Ensure animations can be reduced via `prefers-reduced-motion`
- Custom cursor includes fallback pointer
- Form inputs have clear focus states beyond just glow effects