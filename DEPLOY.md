# 🐶✈️ Wet Dog Drones - Manual Deployment Guide

## Option 1: Direct Upload to Cloudflare Pages (Easiest)

### Step 1: Create Cloudflare Account
1. Go to https://dash.cloudflare.com/sign-up
2. Sign up with `wetdogdrones@agentmail.to` (your AgentMail email)
3. Verify email

### Step 2: Create Pages Project
1. In Cloudflare Dashboard, click **Pages**
2. Click **Create a project**
3. Select **Upload assets** (instead of connecting Git)
4. Project name: `wetdogdrones-site`
5. Upload the `wetdogdrones-site-dist.tar.gz` file
6. Click **Deploy**

### Step 3: Set Custom Domain
1. In your Pages project, click **Custom domains**
2. Click **Set up a custom domain**
3. Enter: `wetdogdrones.com`
4. Follow DNS instructions (add CNAME record)

### Step 4: Update DNS
1. Go to your domain registrar (where you bought wetdogdrones.com)
2. Add CNAME record:
   - Name: `@` or `www`
   - Target: `wetdogdrones-site.pages.dev`
3. Wait 5-30 minutes for propagation

## Option 2: Using Wrangler CLI (Advanced)

Once you have CLI access:

```bash
# Navigate to site directory
cd /home/wetdog/.openclaw/workspace/wetdogdrones-site

# Login to Cloudflare
npx wrangler login

# Deploy
./deploy.sh
```

## Option 3: GitHub + Cloudflare Pages (Recommended for Updates)

### Create GitHub Repo:
1. Go to https://github.com/new
2. Repository name: `wetdogdrones-astro`
3. Make it private or public
4. **DO NOT** initialize with README

### Push Code:
```bash
cd /home/wetdog/.openclaw/workspace/wetdogdrones-site
git remote add origin https://github.com/YOUR_USERNAME/wetdogdrones-astro.git
git push -u origin master
```

### Connect to Cloudflare Pages:
1. In Cloudflare Dashboard → Pages
2. Click **Create a project**
3. Select **Connect to Git**
4. Connect your GitHub account
5. Select `wetdogdrones-astro` repo
6. Build settings:
   - Build command: `npm run build`
   - Output directory: `dist`
7. Click **Save and Deploy**

## 📁 Files Included

- `wetdogdrones-site-dist.tar.gz` - Built site ready to upload
- `deploy.sh` - Automated deployment script (requires CLI)
- Full source code in `src/` directory

## 🔧 Making Updates

Once deployed via GitHub:
1. Edit files in `/home/wetdog/.openclaw/workspace/wetdogdrones-site/src/`
2. Commit and push: `git add . && git commit -m "Update" && git push`
3. Cloudflare Pages auto-deploys in ~30 seconds

## 💰 Cost

- Cloudflare Pages: **FREE** (unlimited bandwidth, 500 builds/month)
- Custom domain: ~$15/year (you already own this)
- **Total: ~$15/year** (vs $100-200/year for InMotion)

## 📧 Need Help?

Email: wetdogdrones@agentmail.to
