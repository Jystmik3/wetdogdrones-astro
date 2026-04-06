#!/bin/bash
# Deploy script for Wet Dog Drones site to Cloudflare Pages

set -e

echo "🐶✈️ Wet Dog Drones Deployment Script"
echo "======================================"
echo ""

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is required but not installed."
    exit 1
fi

# Check for wrangler
if ! command -v wrangler &> /dev/null; then
    echo "📦 Installing Wrangler CLI..."
    npm install -g wrangler
fi

# Check if user is logged in to Cloudflare
echo "🔐 Checking Cloudflare authentication..."
if ! wrangler whoami &> /dev/null; then
    echo "⚠️  Not logged in to Cloudflare."
    echo ""
    echo "Please run: wrangler login"
    echo "Then run this script again."
    exit 1
fi

echo "✅ Authenticated with Cloudflare"
echo ""

# Build the site
echo "🔨 Building site..."
npm run build

# Deploy to Cloudflare Pages
echo ""
echo "🚀 Deploying to Cloudflare Pages..."
echo ""

# Use wrangler pages deploy
wrangler pages deploy dist --project-name="wetdogdrones-site"

echo ""
echo "✅ Deployment complete!"
echo ""
echo "Your site should be live at:"
echo "https://wetdogdrones-site.pages.dev"
echo ""
echo "To use your custom domain (wetdogdrones.com):"
echo "1. Go to Cloudflare Dashboard → Pages → wetdogdrones-site"
echo "2. Click 'Custom domains'"
echo "3. Add 'wetdogdrones.com'"
echo "4. Update your DNS records as instructed"
