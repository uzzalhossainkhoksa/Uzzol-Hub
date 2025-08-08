#!/bin/bash

BASE_DIR="/root/Uzzol-Hub/MasterWorkspace"

echo "Creating full MasterWorkspace with files and folders under $BASE_DIR ..."

mkdir -p "$BASE_DIR"

# --- 00_bootloaders ---
mkdir -p "$BASE_DIR/00_bootloaders/ventoy/themes"
mkdir -p "$BASE_DIR/00_bootloaders/ventoy/secure_boot"
mkdir -p "$BASE_DIR/00_bootloaders/grub/themes"
mkdir -p "$BASE_DIR/00_bootloaders/rufus_tools"

# Sample ventoy.json
cat > "$BASE_DIR/00_bootloaders/ventoy/ventoy.json" <<EOL
{
  "control_legacy": [
    { "VTOY_DEFAULT_MENU_MODE": "1" },
    { "VTOY_FILT_DOT_UNDERSCORE_FILE": "1" }
  ],
  "theme_legacy": {
    "file": "/ventoy/themes/theme.txt"
  }
}
EOL

# --- 01_os_images ---
mkdir -p "$BASE_DIR/01_os_images/windows"
mkdir -p "$BASE_DIR/01_os_images/linux_distros"
mkdir -p "$BASE_DIR/01_os_images/android_x86"
mkdir -p "$BASE_DIR/01_os_images/bsd"
mkdir -p "$BASE_DIR/01_os_images/rescue_tools"
mkdir -p "$BASE_DIR/01_os_images/pentesting_distros"
mkdir -p "$BASE_DIR/01_os_images/virtualization"

# Add sample README.md for OS images
echo "# OS Images Folder" > "$BASE_DIR/01_os_images/README.md"

# --- 02_persistence_storage ---
mkdir -p "$BASE_DIR/02_persistence_storage"
touch "$BASE_DIR/02_persistence_storage/Ubuntu_Persistence.img"

# --- 03_drivers_firmware ---
mkdir -p "$BASE_DIR/03_drivers_firmware/gpu_drivers"
mkdir -p "$BASE_DIR/03_drivers_firmware/wifi_drivers"
mkdir -p "$BASE_DIR/03_drivers_firmware/mobile_tools"
mkdir -p "$BASE_DIR/03_drivers_firmware/system_firmware_updates"

# --- 04_tools ---
mkdir -p "$BASE_DIR/04_tools/android_unlock_tools/adb"
mkdir -p "$BASE_DIR/04_tools/android_unlock_tools/fastboot"
mkdir -p "$BASE_DIR/04_tools/android_unlock_tools/sp_flash_tool"
mkdir -p "$BASE_DIR/04_tools/android_unlock_tools/qfil"
mkdir -p "$BASE_DIR/04_tools/ios_jailbreak_tools/checkra1n"
mkdir -p "$BASE_DIR/04_tools/ios_jailbreak_tools/unc0ver"
mkdir -p "$BASE_DIR/04_tools/ios_jailbreak_tools/libimobiledevice"
mkdir -p "$BASE_DIR/04_tools/forensic_tools/autopsy"
mkdir -p "$BASE_DIR/04_tools/forensic_tools/sleuthkit"
mkdir -p "$BASE_DIR/04_tools/network_scanners/nmap"
mkdir -p "$BASE_DIR/04_tools/network_scanners/wireshark"
mkdir -p "$BASE_DIR/04_tools/network_scanners/tcpdump"
mkdir -p "$BASE_DIR/04_tools/penetration_testing_tools/metasploit"
mkdir -p "$BASE_DIR/04_tools/penetration_testing_tools/hydra"
mkdir -p "$BASE_DIR/04_tools/penetration_testing_tools/johntheripper"
mkdir -p "$BASE_DIR/04_tools/backup_restore_tools/borgbackup"
mkdir -p "$BASE_DIR/04_tools/backup_restore_tools/restic"
mkdir -p "$BASE_DIR/04_tools/backup_restore_tools/rclone"

# --- 05_scripts ---
mkdir -p "$BASE_DIR/05_scripts"

# Sample automation script
cat > "$BASE_DIR/05_scripts/install_ventoy.sh" <<'EOS'
#!/bin/bash
echo "Installing Ventoy on USB..."
# (Add your Ventoy install commands here)
EOS
chmod +x "$BASE_DIR/05_scripts/install_ventoy.sh"

# --- 06_web_projects ---
mkdir -p "$BASE_DIR/06_web_projects/blogger_api_automation/docs"
mkdir -p "$BASE_DIR/06_web_projects/fiverr_ai_chatbot/backend"
mkdir -p "$BASE_DIR/06_web_projects/fiverr_ai_chatbot/frontend"
mkdir -p "$BASE_DIR/06_web_projects/fiverr_ai_chatbot/docs"
mkdir -p "$BASE_DIR/06_web_projects/cpa_marketing_tools/docs"
mkdir -p "$BASE_DIR/06_web_projects/blockchain_projects/docs"
mkdir -p "$BASE_DIR/06_web_projects/android_unlock_tools/adb_tools"
mkdir -p "$BASE_DIR/06_web_projects/android_unlock_tools/docs"
mkdir -p "$BASE_DIR/06_web_projects/social_marketing_automation/docs"
mkdir -p "$BASE_DIR/06_web_projects/personal_website/assets/css"
mkdir -p "$BASE_DIR/06_web_projects/personal_website/assets/js"
mkdir -p "$BASE_DIR/06_web_projects/personal_website/assets/images"

# Sample index.php in blogger_api_automation
cat > "$BASE_DIR/06_web_projects/blogger_api_automation/index.php" <<'EOPHP'
<?php
echo "Welcome to Blogger API Automation Project!";
?>
EOPHP

# Sample chatbot.html in fiverr_ai_chatbot frontend
cat > "$BASE_DIR/06_web_projects/fiverr_ai_chatbot/frontend/index.html" <<EOF
<!DOCTYPE html>
<html>
<head>
  <title>Fiverr AI Chatbot</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Fiverr AI Chatbot Frontend</h1>
  <div id="chatbox"></div>
  <script src="script.js"></script>
</body>
</html>
EOF

# Sample style.css
cat > "$BASE_DIR/06_web_projects/fiverr_ai_chatbot/frontend/style.css" <<EOF
body { font-family: Arial, sans-serif; background:#f4f4f4; }
#chatbox { border: 1px solid #ccc; padding:10px; width: 300px; height: 400px; overflow-y: scroll; background:#fff; }
EOF

# Sample script.js
cat > "$BASE_DIR/06_web_projects/fiverr_ai_chatbot/frontend/script.js" <<EOF
console.log("Chatbot frontend loaded");
EOF

# --- 07_cloud_services ---
mkdir -p "$BASE_DIR/07_cloud_services/cloudflare"
mkdir -p "$BASE_DIR/07_cloud_services/aws"
mkdir -p "$BASE_DIR/07_cloud_services/google_cloud"
mkdir -p "$BASE_DIR/07_cloud_services/digitalocean"
mkdir -p "$BASE_DIR/07_cloud_services/azure"

# --- 08_monitoring_logs ---
mkdir -p "$BASE_DIR/08_monitoring_logs/system_logs"
mkdir -p "$BASE_DIR/08_monitoring_logs/security_logs"
mkdir -p "$BASE_DIR/08_monitoring_logs/vpn_logs"
mkdir -p "$BASE_DIR/08_monitoring_logs/application_logs"

# --- 09_ui_dashboard ---
mkdir -p "$BASE_DIR/09_ui_dashboard/backend"
mkdir -p "$BASE_DIR/09_ui_dashboard/frontend"

# Sample React README placeholder
echo "# UI Dashboard React Frontend" > "$BASE_DIR/09_ui_dashboard/frontend/README.md"

# --- 10_documentation ---
mkdir -p "$BASE_DIR/10_documentation"

cat > "$BASE_DIR/10_documentation/installation_guide.md" <<EOL
# Installation Guide

This guide helps you install all components of the MasterWorkspace system.
EOL

cat > "$BASE_DIR/10_documentation/usage_manual.md" <<EOL
# Usage Manual

Detailed instructions on how to use the projects and tools.
EOL

cat > "$BASE_DIR/10_documentation/troubleshooting.md" <<EOL
# Troubleshooting

Common problems and solutions.
EOL

cat > "$BASE_DIR/10_documentation/changelog.md" <<EOL
# Changelog

Version history and updates.
EOL

cat > "$BASE_DIR/10_documentation/api_reference.md" <<EOL
# API Reference

Documentation of all APIs used in projects.
EOL

# Create README.md files in main directories for clarity
for folder in \
    "$BASE_DIR" \
    "$BASE_DIR/00_bootloaders" \
    "$BASE_DIR/01_os_images" \
    "$BASE_DIR/02_persistence_storage" \
    "$BASE_DIR/03_drivers_firmware" \
    "$BASE_DIR/04_tools" \
    "$BASE_DIR/05_scripts" \
    "$BASE_DIR/06_web_projects" \
    "$BASE_DIR/07_cloud_services" \
    "$BASE_DIR/08_monitoring_logs" \
    "$BASE_DIR/09_ui_dashboard" \
    "$BASE_DIR/10_documentation"
do
    touch "$folder/README.md"
done

echo "MasterWorkspace full structure and sample files created successfully under $BASE_DIR."
