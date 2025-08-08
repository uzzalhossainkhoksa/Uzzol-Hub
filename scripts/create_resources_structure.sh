#!/bin/bash

BASE_DIR="/root/Uzzol-Hub/Resources"

echo "Creating Resources directory structure at $BASE_DIR ..."

mkdir -p "$BASE_DIR"

# documentation
mkdir -p "$BASE_DIR/documentation/setup-guides"
mkdir -p "$BASE_DIR/documentation/api-docs"
mkdir -p "$BASE_DIR/documentation/best-practices"
mkdir -p "$BASE_DIR/documentation/changelogs"

# tutorials
mkdir -p "$BASE_DIR/tutorials/ai-chatbot"
mkdir -p "$BASE_DIR/tutorials/web3-blockchain"
mkdir -p "$BASE_DIR/tutorials/podcasting"
mkdir -p "$BASE_DIR/tutorials/seo-marketing"
mkdir -p "$BASE_DIR/tutorials/freelance-growth"
mkdir -p "$BASE_DIR/tutorials/network-security"
mkdir -p "$BASE_DIR/tutorials/automation-scripts"
mkdir -p "$BASE_DIR/tutorials/cpa-marketing"
mkdir -p "$BASE_DIR/tutorials/social-media-marketing"

# config-files
mkdir -p "$BASE_DIR/config-files/systemd-services"
mkdir -p "$BASE_DIR/config-files/web3-nodes"
mkdir -p "$BASE_DIR/config-files/cpa-platforms"
mkdir -p "$BASE_DIR/config-files/social-media"

# templates
mkdir -p "$BASE_DIR/templates/email-templates"
mkdir -p "$BASE_DIR/templates/podcast-scripts"
mkdir -p "$BASE_DIR/templates/proposal-templates"
mkdir -p "$BASE_DIR/templates/social-media-posts"
mkdir -p "$BASE_DIR/templates/cpa-offers"
mkdir -p "$BASE_DIR/templates/web3-smart-contracts"

# cheat-sheets
mkdir -p "$BASE_DIR/cheat-sheets"

# links
mkdir -p "$BASE_DIR/links"
mkdir -p "$BASE_DIR/links/web3-platforms"
mkdir -p "$BASE_DIR/links/cpa-networks"
mkdir -p "$BASE_DIR/links/social-media-tools"
mkdir -p "$BASE_DIR/links/marketing-platforms"

# tools-setup
mkdir -p "$BASE_DIR/tools-setup/automation-scripts"

# license-keys
mkdir -p "$BASE_DIR/license-keys"

# logs
mkdir -p "$BASE_DIR/logs/system-logs"
mkdir -p "$BASE_DIR/logs/application-logs"
mkdir -p "$BASE_DIR/logs/security-logs"

# certifications
mkdir -p "$BASE_DIR/certifications/other-certificates"

# contracts
mkdir -p "$BASE_DIR/contracts/invoices"

# media
mkdir -p "$BASE_DIR/media/images"
mkdir -p "$BASE_DIR/media/videos"
mkdir -p "$BASE_DIR/media/audio"
mkdir -p "$BASE_DIR/media/thumbnails"

# backups
mkdir -p "$BASE_DIR/backups/database-backups"
mkdir -p "$BASE_DIR/backups/website-backups"
mkdir -p "$BASE_DIR/backups/system-config-backups"

# Placeholder files creation for important docs
touch "$BASE_DIR/documentation/project-guidelines.md"
touch "$BASE_DIR/documentation/best-practices/coding-standards.md"
touch "$BASE_DIR/documentation/best-practices/security-guidelines.md"
touch "$BASE_DIR/documentation/best-practices/seo-optimization.md"
touch "$BASE_DIR/documentation/changelogs/v1.0.md"
touch "$BASE_DIR/documentation/changelogs/v1.1.md"

touch "$BASE_DIR/cheat-sheets/bash-cheatsheet.md"
touch "$BASE_DIR/cheat-sheets/git-commands.md"
touch "$BASE_DIR/cheat-sheets/seo-best-practices.md"
touch "$BASE_DIR/cheat-sheets/linux-commands.md"
touch "$BASE_DIR/cheat-sheets/docker-commands.md"
touch "$BASE_DIR/cheat-sheets/termux-commands.md"

touch "$BASE_DIR/links/useful-websites.md"
touch "$BASE_DIR/links/api-endpoints.md"
touch "$BASE_DIR/links/learning-resources.md"
touch "$BASE_DIR/links/tools-download-links.md"
touch "$BASE_DIR/links/communities.md"
touch "$BASE_DIR/links/web3-platforms/platform-list.md"
touch "$BASE_DIR/links/cpa-networks/cpa-list.md"
touch "$BASE_DIR/links/social-media-tools/tools-list.md"
touch "$BASE_DIR/links/marketing-platforms/platforms-list.md"

touch "$BASE_DIR/tools-setup/vscode-extensions.md"
touch "$BASE_DIR/tools-setup/docker-images-list.md"
touch "$BASE_DIR/tools-setup/cloudflare-firewall-rules.md"
touch "$BASE_DIR/tools-setup/termux-setup.sh"
touch "$BASE_DIR/tools-setup/automation-scripts/deploy.sh"
touch "$BASE_DIR/tools-setup/automation-scripts/backup.sh"

touch "$BASE_DIR/license-keys/notes.txt"

touch "$BASE_DIR/contracts/freelance-contract.docx"
touch "$BASE_DIR/contracts/nda-template.docx"
touch "$BASE_DIR/contracts/invoices/invoice-2025-01.pdf"
touch "$BASE_DIR/contracts/invoices/invoice-2025-02.pdf"

touch "$BASE_DIR/certifications/google-analytics-certificate.pdf"
touch "$BASE_DIR/certifications/aws-cloud-practitioner.pdf"

echo "Enhanced Resources directory structure created successfully with Web3, CPA, Social & Marketing platforms."
