# Wet Dog Drones Website

Astro-powered static site for Wet Dog Drones — construction drone services in Colorado.

## 🚀 Quick Start

```bash
# Install dependencies
npm install

# Start dev server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📁 Project Structure

```
/
├── public/              # Static assets (TwentyTwenty, images)
├── src/
│   ├── layouts/         # Page layouts
│   ├── pages/           # Page routes
│   │   ├── case-studies/  # Case study pages
│   │   ├── index.astro    # Homepage
│   │   ├── services.astro # Services page
│   │   ├── about.astro    # About page
│   │   └── contact.astro  # Contact page
│   └── styles/          # Global styles
├── astro.config.mjs     # Astro config
└── wrangler.jsonc       # Cloudflare Pages config
```

## 🎨 Features

- **Astro** — Fast, modern static site generator
- **Tailwind CSS** — Utility-first styling
- **Cloudflare Pages** — Free hosting with global CDN
- **TwentyTwenty.js** — Before/after image sliders
- **Netlify Forms** — Contact form handling
- **Responsive** — Mobile-first design

## 🌐 Deployment

### Cloudflare Pages (Recommended)

1. Push code to GitHub
2. Connect repo to Cloudflare Pages
3. Build command: `npm run build`
4. Output directory: `dist`
5. Deploy!

### Manual Deploy with Wrangler

```bash
# Build the site
npm run build

# Deploy to Cloudflare Pages
npx wrangler pages deploy dist
```

## 📧 Contact Form

The contact form uses Netlify Forms. On Cloudflare Pages, you can:
- Use Formspree (free tier: 50 submissions/month)
- Set up a Cloudflare Worker to handle form submissions
- Use a serverless function

## 📄 License

Private — Wet Dog Drones
