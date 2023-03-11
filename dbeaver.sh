# This script basically automates the official dbeaver installation guide for Linux:
# https://dbeaver.io/download/

# 32 or 64-bit?
# BIT=$(getconf LONG_BIT)
# echo ${BIT}
# Download the appropriate version
wget -O ~/dbeaver.rpm "https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm"

# Execute the script
if command -v dbeaver >/dev/null 2>&1; then
    echo "O dbeaver está instalado."
    sudo rpm -Uvh ~/dbeaver.rpm
else
    echo "O dbeaver não está instalado."
    sudo rpm -Ivh ~/dbeaver.rpm
fi

# Remove the downloaded archive
rm ~/dbeaver.rpm
