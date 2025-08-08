#!/usr/bin/env bash
# setup.sh — Uzzol-Hub Full Pro Max SEO + Life OS Generator
# Run inside your cloned repo directory: cd ~/Uzzol-Hub && chmod +x setup.sh && ./setup.sh
set -euo pipefail
IFS=$'\n\t'

# ---------------------------
# CONFIG (edit here if needed)
# ---------------------------
AUTHOR_NAME="Uzzol Khoksa"
AUTHOR_EMAIL="uzzolhassan38@gmail.com"
GITHUB_URL="https://github.com/uzzalhossainkhoksa/Uzzol-Hub.git"
YEAR="$(date +%Y)"
REPO_ROOT="$(pwd)"

echo "🌐 Uzzol-Hub Full Pro Max Setup (Life OS) — Author: $AUTHOR_NAME <$AUTHOR_EMAIL>"
echo "Repository root: $REPO_ROOT"
echo "Target Git remote: $GITHUB_URL"

# ---------------------------
# FOLDER STRUCTURE (big)
# ---------------------------
folders=(
  "system"
  "system/services"
  "apps"
  "apps/web"
  "apps/mobile"
  "ai"
  "ai/edge"
  "ai/models"
  "web3"
  "web3/contracts"
  "web3/dapps"
  "web3/nodes"
  "web3/tokenomics"
  "network-security"
  "network-security/guides"
  "network-security/tools"
  "developer"
  "developer/web"
  "developer/backend"
  "developer/cli"
  "podcast"
  "podcast/templates"
  "podcast/scripts"
  "podcast/promotion"
  "business"
  "business/automation"
  "business/gigs"
  "marketing"
  "marketing/seo"
  "marketing/outreach"
  "portfolio"
  "portfolio/projects"
  "Whoami"
  "Whoami/profile"
  "Whoami/portfolio"
  "Whoami/resume"
  "Whoami/contact"
  "Whoami/testimonials"
  "docs"
  "docs/guides"
  "docs/contracts"
  "assets"
  "assets/css"
  "assets/js"
  "assets/images"
  "examples"
  "examples/smart-contracts"
  "scripts"
  "scripts/automation"
  "scripts/deploy"
  "api"
  "api/php"
  "config"
  "docker"
  ".github"
  ".github/workflows"
  "licenses"
)

echo "📁 Creating folders..."
for d in "${folders[@]}"; do
  mkdir -p "$d"
done

# ---------------------------
# helper: write file if missing or overwrite intentionally
# ---------------------------
write() {
  path="$1"
  shift
  content="$*"
  echo "$content" > "$path"
  echo "   -> $path"
}

# ---------------------------
# CORE: README, LICENSE, CONTRIBUTING
# ---------------------------
write "README.md" "# Uzzol-Hub — Life OS (Web3 Theme)\n\nAuthor: $AUTHOR_NAME <$AUTHOR_EMAIL>\n\nThis repo is a full life-theme OS skeleton for Web3, AI, Network Security, Developer tools, Podcast automation and Business automation. Use, customize and extend.\n\n## Quickstart\n1. Edit files in this repo\n2. git add . && git commit -m \"update\" && git push\n\n## Contact\nEmail: $AUTHOR_EMAIL\nGitHub: $GITHUB_URL\n"

write "licenses/LICENSE.md" "MIT License\n\nCopyright (c) $YEAR $AUTHOR_NAME\n\nPermission is hereby granted, free of charge, to any person obtaining a copy..."

write "CONTRIBUTING.md" "# Contributing to Uzzol-Hub\n\n- Fork -> Feature branch -> Pull Request\n- Follow docs/CODING_STANDARDS.md\n"

write "docs/CODING_STANDARDS.md" "# Coding Standards\n\n- Small, documented scripts\n- Modular design\n- Tests in tests/ where applicable\n"

# ---------------------------
# GLOBAL ASSETS (css/js)
# ---------------------------
write "assets/css/style.css" "/* Uzzol-Hub global styles */\nbody{font-family:Inter,system-ui,Arial,sans-serif;margin:0;background:#fbfbfd;color:#111}\nheader,footer{background:#0d1020;color:#fff;padding:1rem;text-align:center}\nmain{padding:1.25rem;max-width:1100px;margin:0 auto}\n.container{padding:1rem}\n.card{background:#fff;border-radius:12px;padding:1rem;margin:1rem 0;box-shadow:0 8px 30px rgba(12,12,20,0.06)}"

write "assets/js/main.js" "// Uzzol-Hub helper JS\nconsole.log('Uzzol-Hub Life OS loaded');"

# ---------------------------
# INDEX + SITE META (SEO-ready)
# ---------------------------
cat > index.html <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Uzzol-Hub — Web3 · Security · AI · Podcast Automation</title>
<meta name="description" content="Uzzol-Hub — Web3 Life OS: Web3 engineering, network security, AI automation and podcast growth services.">
<meta name="keywords" content="Web3, Blockchain, Smart Contracts, Network Security, AI Automation, Podcast Automation, DApp, Solidity, Penetration Testing">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<header><h1>Uzzol-Hub</h1><p>Web3 • Network Security • AI • Podcast • Business Automation</p></header>
<main class="container">
<section class="card">
<h2>Services</h2>
<ul>
<li><a href="web3/smart-contract-development.html">Smart Contract Development</a></li>
<li><a href="network-security/wifi-hardening.html">Network Security & Hardening</a></li>
<li><a href="podcast/auto-publish.html">Podcast Automation</a></li>
<li><a href="Whoami/profile.html">About Uzzol</a></li>
</ul>
</section>
<section class="card">
<h2>Examples & Demos</h2>
<ul>
<li><a href="examples/smart-contracts/SampleToken.sol">SampleToken.sol</a></li>
<li><a href="web3/dapps/demo-index.html">DApp Demo</a></li>
</ul>
</section>
</main>
<footer>&copy; '$YEAR' $AUTHOR_NAME</footer>
<script src="assets/js/main.js"></script>
</body>
</html>
HTML
echo "   -> index.html"

# ---------------------------
# GENERATE MULTIPLE SEO PAGES (many)
# ---------------------------
generate_html() {
  target="$1"; title="$2"; keywords="$3"; desc="$4"
  mkdir -p "$(dirname "$target")"
  cat > "$target" <<EOF
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>$title - Uzzol-Hub</title>
<meta name="description" content="$desc">
<meta name="keywords" content="$keywords">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<header><h1>$title</h1></header>
<main class="container card">
<p>$desc</p>
<h3>Services provided</h3>
<ul>
<li>Consultation</li>
<li>Implementation</li>
<li>Audit & Automation</li>
</ul>
</main>
<footer>&copy; $YEAR $AUTHOR_NAME</footer>
</body>
</html>
EOF
  echo "   -> $target"
}

# Web3 pages
generate_html "web3/smart-contract-development.html" "Smart Contract Development" "Solidity, Hardhat, Foundry, ERC20, ERC721, Smart Contract Security" "Build secure smart contracts, tokens and on-chain logic using Solidity and industry standards."
generate_html "web3/dapp-design.html" "DApp Design & Wallet Integration" "MetaMask, WalletConnect, Ethers.js, web3.js, UX for DApps" "Build modern DApps with wallet integration and best UX practices."
generate_html "web3/tokenomics.html" "Tokenomics & Token Design" "Tokenomics, Incentives, DeFi, Liquidity" "Design token economies for sustainable incentives."

# Network security pages
generate_html "network-security/wifi-hardening.html" "WiFi & Router Hardening" "WPA3, Secure IoT, Router Security, Network Hardening" "Practical steps to secure home and office WiFi and routers."
generate_html "network-security/zero-trust.html" "Zero Trust Architecture" "Zero Trust, Microsegmentation, SASE, Identity" "Implement Zero Trust principles for modern infrastructures."
generate_html "network-security/incident-response.html" "Incident Response & Playbooks" "IR, Forensics, SOC, Automation" "Create automated incident response playbooks and runbooks."

# Developer pages
generate_html "developer/php-api-best-practices.html" "Lightweight PHP API Best Practices" "PHP, REST, Security, Performance" "Build secure, lightweight PHP APIs for microservices and Termux deployment."
generate_html "developer/mobile-ui.html" "Mobile-First UI Patterns" "Responsive, CLS, Layout stability" "Design mobile-first interfaces optimized for stability and performance."

# Podcast pages
generate_html "podcast/auto-publish.html" "Podcast Auto Publish Pipeline" "RSS, FFmpeg, Automation, Hosting" "Automate podcast publishing, show-notes and scheduling."
generate_html "podcast/outreach.html" "Podcast Sponsor Outreach" "Sponsorship, Cold Email Templates, Ad Packages" "High-converting sponsor outreach templates and packages."

# Business / marketing
generate_html "business/growth-hacks.html" "Digital Growth & Funnels" "Email Funnels, CRM, Automation, CPA, Affiliate" "Set up funnels and automation to monetize digital products."

# AI pages
generate_html "ai/edge-ai.html" "Edge AI & TinyML" "TinyML, On-device AI, Edge Inference" "Deploy tiny machine learning models on edge devices and mobile."

# Education / lifestyle
generate_html "education/ai-learning.html" "AI-Powered Personalized Learning" "Adaptive Learning, EdTech, Microlearning" "Create AI-first adaptive learning experiences."
generate_html "lifestyle/digital-nomad.html" "Digital Nomad & Remote Work" "Remote Tools, Productivity, Location Independent" "Tools and checklists for thriving as a digital nomad."

# ---------------------------
# Whoami section (full)
# ---------------------------
write "Whoami/profile.md" "# Whoami — $AUTHOR_NAME\n\n**Name:** $AUTHOR_NAME\n**Email:** $AUTHOR_EMAIL\n**GitHub:** $GITHUB_URL\n\nShort bio: Web3 engineer, security specialist, and automation expert focused on building lightweight, mobile-first solutions and Podcast automation.\n"

cat > Whoami/profile.html <<EOF
<!doctype html>
<html>
<head><meta charset="utf-8"><title>$AUTHOR_NAME — Profile</title><meta name="description" content="Profile of $AUTHOR_NAME — Web3 engineer and network security specialist."></head>
<body>
<header><h1>$AUTHOR_NAME</h1></header>
<main class="container">
<section class="card">
<h2>Bio</h2>
<p>Web3 Engineer • Network Security • Automation • Podcast growth</p>
</section>
<section class="card">
<h2>Contact</h2>
<ul>
<li>Email: <a href="mailto:$AUTHOR_EMAIL">$AUTHOR_EMAIL</a></li>
<li>GitHub: <a href="$GITHUB_URL">$GITHUB_URL</a></li>
</ul>
</section>
</main>
<footer>&copy; $YEAR $AUTHOR_NAME</footer>
</body>
</html>
EOF
echo "   -> Whoami/profile.html"

# Whoami portfolio sample
cat > Whoami/portfolio/index.html <<EOF
<!doctype html>
<html>
<head><meta charset="utf-8"><title>Portfolio — $AUTHOR_NAME</title></head>
<body>
<header><h1>Portfolio</h1></header>
<main class="container">
<ul>
<li><a href="../examples/smart-contracts/SampleToken.sol">SampleToken.sol (ERC20)</a></li>
<li><a href="../web3/dapp-design.html">DApp Design Example</a></li>
<li><a href="../podcast/auto-publish.html">Podcast Automation Example</a></li>
</ul>
</main>
<footer>&copy; $YEAR $AUTHOR_NAME</footer>
</body>
</html>
EOF
echo "   -> Whoami/portfolio/index.html"

# Whoami resume
write "Whoami/resume/resume.md" "# Resume — $AUTHOR_NAME\n\n## Summary\nWeb3 Engineer & Security Specialist with experience in development, audits and automation.\n\n## Experience\n- Freelance Web3 & Security (2019-present)\n"

write "Whoami/testimonials/README.md" "# Testimonials\n\nAdd client testimonials here."

# ---------------------------
# Examples: smart contract, dapp, php api, scripts
# ---------------------------
write "examples/smart-contracts/SampleToken.sol" "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.17;\nimport \"@openzeppelin/contracts/token/ERC20/ERC20.sol\";\ncontract SampleToken is ERC20 {\n  constructor() ERC20(\"UzzolToken\",\"UZZ\") { _mint(msg.sender, 1000000 * 10 ** decimals()); }\n}\n"

generate_html "web3/dapps/demo-index.html" "Uzzol DApp Demo" "DApp Demo, MetaMask, WalletConnect" "Simple demo page for wallet connect & contract calls."

# PHP API demo
cat > api/php/demo.php <<'PHP'
<?php
header('Content-Type: application/json');
echo json_encode(['status'=>'ok','project'=>'Uzzol-Hub','time'=>time()]);
PHP
echo "   -> api/php/demo.php"

# Podcast automation scripts
cat > podcast/scripts/auto_publish.sh <<'SH'
#!/usr/bin/env bash
# stub: publish podcast episode (replace with real API calls)
EP="$1"
TITLE="$2"
echo "Publishing \"$TITLE\" => file: $EP"
# TODO: implement host-specific upload via curl/API
SH
chmod +x podcast/scripts/auto_publish.sh
echo "   -> podcast/scripts/auto_publish.sh"

# Automation & deploy scripts
cat > scripts/deploy_to_github_pages.sh <<'SH'
#!/usr/bin/env bash
# Simple gh-pages deploy stub
echo "Building and deploying static site (stub)"
git add .
git commit -m "deploy: static update" || true
git push origin main
SH
chmod +x scripts/deploy_to_github_pages.sh
echo "   -> scripts/deploy_to_github_pages.sh"

# ---------------------------
# Additional useful files: sitemap, robots, rss, links
# ---------------------------
write "sitemap.xml" '<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"><url><loc>https://github.com/uzzalhossainkhoksa/Uzzol-Hub</loc></url></urlset>'
write "robots.txt" "User-agent: *\nDisallow:\nSitemap: /sitemap.xml"
write "rss.xml" '<?xml version="1.0"?><rss version="2.0"><channel><title>Uzzol-Hub Updates</title><link>/</link><description>Updates</description></channel></rss>'
write "links.json" "{\"home\":\"/\",\"whoami\":\"/Whoami/profile.html\",\"portfolio\":\"/Whoami/portfolio/index.html\"}"

# ---------------------------
# Git: initialize / ensure remote / commit / push
# ---------------------------
echo "🔧 Preparing Git commit..."

# initialize if no git
if [ ! -d .git ]; then
  git init
  echo "   -> git repo initialized"
fi

# set remote if not set
if git remote get-url origin >/dev/null 2>&1; then
  echo "   -> origin exists: $(git remote get-url origin)"
else
  git remote add origin "$GITHUB_URL"
  echo "   -> origin set to $GITHUB_URL"
fi

# ensure branch main
git branch -M main 2>/dev/null || true

# add & commit
git add .
if git diff --cached --quiet; then
  echo "   -> no staged changes"
else
  git commit -m "chore: Uzzol-Hub Full Pro Max Life OS scaffold (auto-generated)"
  echo "   -> committed"
fi

# push
echo "📤 Attempting to push to origin/main..."
set +e
git push -u origin main
push_status=$?
set -e
if [ "$push_status" -ne 0 ]; then
  echo "⚠️ git push failed. Likely authentication issue. Do one of the following:"
  echo "  1) Run: gh auth login (recommended) and try again"
  echo "  2) Set remote with a PAT: git remote set-url origin https://<PAT>@github.com/uzzalhossainkhoksa/Uzzol-Hub.git"
  echo "  3) Manually push from a machine where you're authenticated."
else
  echo "✅ Pushed to GitHub successfully."
fi

echo "🎉 Uzzol-Hub Full Pro Max setup finished."
echo "Open index.html and /Whoami/profile.html to review. Edit files in docs/ and services/ to add real content."
