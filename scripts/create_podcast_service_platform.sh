#!/bin/bash

BASE_DIR="/root/Uzzol-Hub/podcast_service_platform"

echo "Creating podcast_service_platform directory structure at $BASE_DIR ..."

mkdir -p "$BASE_DIR"

# docs
mkdir -p "$BASE_DIR/docs"
touch "$BASE_DIR/docs/podcast_keywords.md" \
      "$BASE_DIR/docs/web3_blockchain_overview.md" \
      "$BASE_DIR/docs/developer_tools_guide.md" \
      "$BASE_DIR/docs/podcast_automation_guide.md" \
      "$BASE_DIR/docs/cybersecurity_best_practices.md" \
      "$BASE_DIR/docs/networking_security.md" \
      "$BASE_DIR/docs/bash_scripting_tutorial.md" \
      "$BASE_DIR/docs/technology_forensics.md" \
      "$BASE_DIR/docs/database_management.md" \
      "$BASE_DIR/docs/data_analysis.md"

# automation_scripts subfolders
mkdir -p "$BASE_DIR/automation_scripts/seo_indexing" \
         "$BASE_DIR/automation_scripts/affiliate_tracking" \
         "$BASE_DIR/automation_scripts/email_sms_marketing" \
         "$BASE_DIR/automation_scripts/social_media" \
         "$BASE_DIR/automation_scripts/security"

touch "$BASE_DIR/automation_scripts/seo_indexing/gsc_index_request.sh" \
      "$BASE_DIR/automation_scripts/seo_indexing/bing_index_request.py" \
      "$BASE_DIR/automation_scripts/seo_indexing/keyword_report_generator.py" \
      "$BASE_DIR/automation_scripts/affiliate_tracking/link_shortener.php" \
      "$BASE_DIR/automation_scripts/affiliate_tracking/conversion_tracker.js" \
      "$BASE_DIR/automation_scripts/affiliate_tracking/affiliate_api_integration.py" \
      "$BASE_DIR/automation_scripts/email_sms_marketing/email_campaign_template.html" \
      "$BASE_DIR/automation_scripts/email_sms_marketing/smtp_integration.py" \
      "$BASE_DIR/automation_scripts/email_sms_marketing/sms_automation.py" \
      "$BASE_DIR/automation_scripts/email_sms_marketing/lead_capture_form.php" \
      "$BASE_DIR/automation_scripts/social_media/auto_post_twitter.py" \
      "$BASE_DIR/automation_scripts/social_media/linkedin_scheduler.js" \
      "$BASE_DIR/automation_scripts/social_media/reddit_engagement_bot.py" \
      "$BASE_DIR/automation_scripts/security/security_audit.sh" \
      "$BASE_DIR/automation_scripts/security/backup_recovery.sh" \
      "$BASE_DIR/automation_scripts/README.md"

# affiliate_campaigns
mkdir -p "$BASE_DIR/affiliate_campaigns/affiliate_links" \
         "$BASE_DIR/affiliate_campaigns/campaign_reports"

touch "$BASE_DIR/affiliate_campaigns/active_offers.json" \
      "$BASE_DIR/affiliate_campaigns/README.md"

# email_marketing
mkdir -p "$BASE_DIR/email_marketing/templates" \
         "$BASE_DIR/email_marketing/campaign_logs"

touch "$BASE_DIR/email_marketing/templates/welcome_email.html" \
      "$BASE_DIR/email_marketing/templates/followup_email.html" \
      "$BASE_DIR/email_marketing/contacts.csv" \
      "$BASE_DIR/email_marketing/README.md"

# public_html and subfolders
mkdir -p "$BASE_DIR/public_html/assets/css" \
         "$BASE_DIR/public_html/assets/js" \
         "$BASE_DIR/public_html/assets/images" \
         "$BASE_DIR/public_html/includes" \
         "$BASE_DIR/public_html/templates" \
         "$BASE_DIR/public_html/membership" \
         "$BASE_DIR/public_html/sponsored_posts" \
         "$BASE_DIR/public_html/ads_management" \
         "$BASE_DIR/public_html/seo_pages/podcast" \
         "$BASE_DIR/public_html/seo_pages/web3_blockchain" \
         "$BASE_DIR/public_html/seo_pages/automation" \
         "$BASE_DIR/public_html/seo_pages/cybersecurity" \
         "$BASE_DIR/public_html/seo_pages/networking_security" \
         "$BASE_DIR/public_html/seo_pages/bash_scripting" \
         "$BASE_DIR/public_html/seo_pages/forensics" \
         "$BASE_DIR/public_html/seo_pages/database" \
         "$BASE_DIR/public_html/seo_pages/data_analysis" \
         "$BASE_DIR/public_html/seo_pages/affiliate-marketing"

# Create asset files
touch "$BASE_DIR/public_html/assets/css/main.css" \
      "$BASE_DIR/public_html/assets/css/responsive.css" \
      "$BASE_DIR/public_html/assets/js/main.js" \
      "$BASE_DIR/public_html/assets/js/analytics.js" \
      "$BASE_DIR/public_html/assets/images/logo.png"

# includes files
touch "$BASE_DIR/public_html/includes/header.php" \
      "$BASE_DIR/public_html/includes/footer.php" \
      "$BASE_DIR/public_html/includes/db_connect.php"

# templates files
touch "$BASE_DIR/public_html/templates/podcast_listing.php" \
      "$BASE_DIR/public_html/templates/podcast_detail.php" \
      "$BASE_DIR/public_html/templates/automation_dashboard.php" \
      "$BASE_DIR/public_html/templates/seo_template.php"

# main public html files
touch "$BASE_DIR/public_html/index.php" \
      "$BASE_DIR/public_html/about.php" \
      "$BASE_DIR/public_html/contact.php" \
      "$BASE_DIR/public_html/services.php" \
      "$BASE_DIR/public_html/blog.php" \
      "$BASE_DIR/public_html/privacy_policy.php"

# membership
touch "$BASE_DIR/public_html/membership/pricing.html" \
      "$BASE_DIR/public_html/membership/subscribe.php" \
      "$BASE_DIR/public_html/membership/benefits.html"

# sponsored posts
touch "$BASE_DIR/public_html/sponsored_posts/booking_form.php" \
      "$BASE_DIR/public_html/sponsored_posts/listings.php"

# ads management
touch "$BASE_DIR/public_html/ads_management/ad_slots.php" \
      "$BASE_DIR/public_html/ads_management/analytics_dashboard.php"

# seo_pages podcast
touch "$BASE_DIR/public_html/seo_pages/podcast/keywords.html" \
      "$BASE_DIR/public_html/seo_pages/podcast/marketing-tips.html" \
      "$BASE_DIR/public_html/seo_pages/podcast/production-best-practices.html" \
      "$BASE_DIR/public_html/seo_pages/podcast/investment-guide.html" \
      "$BASE_DIR/public_html/seo_pages/podcast/industry-trends.html"

# seo_pages web3_blockchain
touch "$BASE_DIR/public_html/seo_pages/web3_blockchain/overview.html" \
      "$BASE_DIR/public_html/seo_pages/web3_blockchain/nft-podcasts.html" \
      "$BASE_DIR/public_html/seo_pages/web3_blockchain/token-economics.html"

# seo_pages automation
touch "$BASE_DIR/public_html/seo_pages/automation/podcast-automation.html" \
      "$BASE_DIR/public_html/seo_pages/automation/workflow-setup.html" \
      "$BASE_DIR/public_html/seo_pages/automation/tools-review.html"

# seo_pages cybersecurity
touch "$BASE_DIR/public_html/seo_pages/cybersecurity/basics.html" \
      "$BASE_DIR/public_html/seo_pages/cybersecurity/network-security.html" \
      "$BASE_DIR/public_html/seo_pages/cybersecurity/threat-detection.html" \
      "$BASE_DIR/public_html/seo_pages/cybersecurity/best-practices.html"

# seo_pages networking_security
touch "$BASE_DIR/public_html/seo_pages/networking_security/firewall-setup.html" \
      "$BASE_DIR/public_html/seo_pages/networking_security/secure-remote-access.html" \
      "$BASE_DIR/public_html/seo_pages/networking_security/incident-response.html"

# seo_pages bash_scripting
touch "$BASE_DIR/public_html/seo_pages/bash_scripting/beginner-guide.html" \
      "$BASE_DIR/public_html/seo_pages/bash_scripting/automation-examples.html" \
      "$BASE_DIR/public_html/seo_pages/bash_scripting/security-scripts.html"

# seo_pages forensics
touch "$BASE_DIR/public_html/seo_pages/forensics/memory-analysis.html" \
      "$BASE_DIR/public_html/seo_pages/forensics/disk-forensics.html" \
      "$BASE_DIR/public_html/seo_pages/forensics/case-studies.html"

# seo_pages database
touch "$BASE_DIR/public_html/seo_pages/database/management.html" \
      "$BASE_DIR/public_html/seo_pages/database/backup-restore.html" \
      "$BASE_DIR/public_html/seo_pages/database/optimization.html"

# seo_pages data_analysis
touch "$BASE_DIR/public_html/seo_pages/data_analysis/etl-process.html" \
      "$BASE_DIR/public_html/seo_pages/data_analysis/dashboard-creation.html" \
      "$BASE_DIR/public_html/seo_pages/data_analysis/reporting.html"

# seo_pages affiliate-marketing
touch "$BASE_DIR/public_html/seo_pages/affiliate-marketing/beginner-tips.html" \
      "$BASE_DIR/public_html/seo_pages/affiliate-marketing/cpa-strategies.html" \
      "$BASE_DIR/public_html/seo_pages/affiliate-marketing/program-reviews.html"

# analytics_dashboard
mkdir -p "$BASE_DIR/analytics_dashboard/frontend" "$BASE_DIR/analytics_dashboard/backend"
touch "$BASE_DIR/analytics_dashboard/frontend/index.html" \
      "$BASE_DIR/analytics_dashboard/frontend/dashboard.js" \
      "$BASE_DIR/analytics_dashboard/backend/api.php" \
      "$BASE_DIR/analytics_dashboard/backend/db_queries.php" \
      "$BASE_DIR/analytics_dashboard/README.md"

# social_engagement
mkdir -p "$BASE_DIR/social_engagement/twitter_bot" \
         "$BASE_DIR/social_engagement/linkedin_bot" \
         "$BASE_DIR/social_engagement/reddit_bot"
touch "$BASE_DIR/social_engagement/README.md"

# blockchain
mkdir -p "$BASE_DIR/blockchain/contracts" \
         "$BASE_DIR/blockchain/deploy" \
         "$BASE_DIR/blockchain/tests"
touch "$BASE_DIR/blockchain/contracts/podcast_token.sol" \
      "$BASE_DIR/blockchain/contracts/nft_pass.sol" \
      "$BASE_DIR/blockchain/contracts/governance.sol" \
      "$BASE_DIR/blockchain/deploy/deploy_contract.js" \
      "$BASE_DIR/blockchain/deploy/verify_contract.js" \
      "$BASE_DIR/blockchain/README.md"

# cybersecurity
mkdir -p "$BASE_DIR/cybersecurity/network_scans" \
         "$BASE_DIR/cybersecurity/firewall_scripts" \
         "$BASE_DIR/cybersecurity/forensic_tools" \
         "$BASE_DIR/cybersecurity/reports"
touch "$BASE_DIR/cybersecurity/network_scans/nmap_report.txt" \
      "$BASE_DIR/cybersecurity/network_scans/scan_network.sh" \
      "$BASE_DIR/cybersecurity/firewall_scripts/setup_firewall.sh" \
      "$BASE_DIR/cybersecurity/firewall_scripts/block_ip.sh" \
      "$BASE_DIR/cybersecurity/forensic_tools/memory_dump_analysis.md" \
      "$BASE_DIR/cybersecurity/forensic_tools/disk_forensics.md"

# database
mkdir -p "$BASE_DIR/database/schema" "$BASE_DIR/database/backups" "$BASE_DIR/database/scripts"
touch "$BASE_DIR/database/schema/podcast_schema.sql" \
      "$BASE_DIR/database/schema/users_schema.sql" \
      "$BASE_DIR/database/schema/automation_schema.sql" \
      "$BASE_DIR/database/backups/backup_2025_08_08.sql" \
      "$BASE_DIR/database/scripts/backup_db.sh" \
      "$BASE_DIR/database/scripts/restore_db.sh" \
      "$BASE_DIR/database/README.md"

# data_analysis
mkdir -p "$BASE_DIR/data_analysis/etl_scripts" "$BASE_DIR/data_analysis/dashboards" "$BASE_DIR/data_analysis/reports"
touch "$BASE_DIR/data_analysis/etl_scripts/extract_transform_load.py" \
      "$BASE_DIR/data_analysis/etl_scripts/clean_data.py" \
      "$BASE_DIR/data_analysis/dashboards/podcast_stats.html" \
      "$BASE_DIR/data_analysis/dashboards/blockchain_usage.html" \
      "$BASE_DIR/data_analysis/reports/monthly_report_2025_08.pdf" \
      "$BASE_DIR/data_analysis/README.md"

# tests
mkdir -p "$BASE_DIR/tests/api_tests" "$BASE_DIR/tests/blockchain_tests" "$BASE_DIR/tests/automation_tests"
touch "$BASE_DIR/tests/api_tests/test_podcast_api.php" \
      "$BASE_DIR/tests/api_tests/test_user_api.php"

# root files
touch "$BASE_DIR/.gitignore" "$BASE_DIR/README.md" "$BASE_DIR/setup_guide.md"

echo "All folders and files created successfully in $BASE_DIR"
