#!/bin/bash

BASE_DIR="/root/Uzzol-Hub/Content"

echo "Creating main Content directory at $BASE_DIR ..."
mkdir -p "$BASE_DIR"

declare -A structure=(
  # AI Chatbot Development
  ["ai-chatbot-development"]="intro-to-ai-chatbots.html best-ai-chatbot-tools.html build-chatbot-openai.html chatbot-usecases.html chatbot-marketing-strategies.html advanced-chatbot-features.html chatbot-api-integration.html chatbot-testing-guide.html chatbot-ui-design.html chatbot-future-trends.html"

  # Freelancer Growth
  ["freelancer-growth"]="start-freelancing.html freelance-skills-2025.html time-management-freelancers.html best-freelance-platforms.html client-communication.html pricing-your-services.html proposal-writing.html managing-multiple-projects.html freelance-legal-tips.html scaling-your-freelance-business.html"

  # Web3 Blockchain
  ["web3-blockchain/contracts"]="SampleToken.sol MyToken.sol NFTCollection.sol"
  ["web3-blockchain/nodes"]=""
  ["web3-blockchain"]="intro-to-web3.html smart-contracts.html deploy-dapp.html blockchain-business.html nft-marketing.html defi-intro.html tokenomics-basics.html web3-security.html web3-future.html building-web3-apps.html"

  # Digital Marketing
  ["digital-marketing"]="seo-basics.html email-marketing-automation.html social-media-growth.html content-marketing.html affiliate-marketing.html paid-ads-strategy.html google-ads-guide.html facebook-ads-guide.html influencer-marketing.html marketing-analytics.html"

  # Podcasting
  ["podcasting/scripts"]="auto_publish.sh recording-tips.sh"
  ["podcasting/templates"]="template1.html template2.html"
  ["podcasting"]="start-podcast.html podcast-tools.html grow-podcast-audience.html monetize-podcast.html podcast-marketing.html podcast-recording-techniques.html podcast-editing-guide.html podcast-publishing.html podcast-guest-tips.html podcast-transcription.html"

  # Network Security
  ["network-security/guides"]="incident-response.html wifi-hardening.html zero-trust.html"
  ["network-security/tools"]="nmap.sh firewall-config.sh vpn-setup.sh"
  ["network-security"]="network-security-basics.html wifi-security.html cyber-attacks.html vpn-setup.html zero-trust-model.html incident-response.html phishing-protection.html firewall-configuration.html malware-prevention.html security-audit.html"

  # System Automation
  ["system-automation/scripts"]="backup.sh deploy.sh monitor.sh"
  ["system-automation"]="bash-scripting.html cron-jobs.html termux-rootless.html proot-distro-setup.html automate-workflows.html git-automation.html backup-scripts.html deployment-automation.html monitoring-scripts.html automation-tools.html"

  # Cloud Hosting
  ["cloud-hosting"]="shared-hosting.html cloudflare-setup.html deploy-nodejs.html dns-management.html ssl-setup.html server-hardening.html cloud-vps.html docker-basics.html kubernetes-intro.html server-monitoring.html"

  # Income Growth
  ["income-growth"]="passive-income.html cpa-marketing.html adsense-monetization.html affiliate-vs-sponsor.html tax-tips-freelancers.html budgeting.html investment-basics.html freelancing-income-tips.html financial-planning.html income-tracking.html"

  # Personal Growth
  ["personal-growth"]="daily-routine.html growth-mindset.html learning-skills.html networking.html work-life-balance.html productivity-tips.html stress-management.html goal-setting.html motivation.html career-planning.html"

  # Extras - Mixed files and scripts
  ["extras/php"]="mailer.php config.php api.php"
  ["extras/js"]="main.js helper.js"
  ["extras/css"]="style.css theme.css"
  ["extras/json"]="links.json config.json"
  ["extras/md"]="README.md CONTRIBUTING.md"
  ["extras/scripts"]="setup.sh install.sh cleanup.sh"
)

echo "Creating folders and files ..."

for folder in "${!structure[@]}"
do
  full_path="$BASE_DIR/$folder"
  mkdir -p "$full_path"
  IFS=' ' read -r -a files <<< "${structure[$folder]}"
  for file in "${files[@]}"
  do
    if [[ "$file" == *.sh ]]; then
      # Create executable shell scripts with basic header
      echo -e "#!/bin/bash\n\n# Script: $file\n\n# Add your script content here" > "$full_path/$file"
      chmod +x "$full_path/$file"
    elif [[ "$file" == *.php ]]; then
      echo -e "<?php\n// PHP file: $file\n// Add your PHP code here\n?>" > "$full_path/$file"
    elif [[ "$file" == *.html ]]; then
      echo -e "<!-- HTML file: $file -->\n<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"UTF-8\">\n<title>$file</title>\n</head>\n<body>\n<h1>$file</h1>\n<p>Content coming soon...</p>\n</body>\n</html>" > "$full_path/$file"
    elif [[ "$file" == *.js ]]; then
      echo -e "// JavaScript file: $file\n// Add your JS code here" > "$full_path/$file"
    elif [[ "$file" == *.css ]]; then
      echo -e "/* CSS file: $file */\n/* Add your styles here */" > "$full_path/$file"
    elif [[ "$file" == *.json ]]; then
      echo -e "{\n  \"file\": \"$file\"\n}" > "$full_path/$file"
    elif [[ "$file" == *.md ]]; then
      echo -e "# $file\n\nDocumentation coming soon..." > "$full_path/$file"
    else
      touch "$full_path/$file"
    fi
  done
done

echo "All directories and files created successfully in $BASE_DIR"
