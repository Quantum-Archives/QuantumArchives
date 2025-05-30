#!/bin/bash

echo '🔧 Konfiguracja serwera QuantumArchives...'

apt update && apt upgrade -y
apt install -y git python3 python3-pip nginx ufw unzip
ufw allow OpenSSH
ufw allow 'Nginx Full'
ufw --force enable
cd /root
git clone https://github.com/Quantum-Archives/QuantumArchives.git
cd QuantumArchives
python3 -m venv venv
source venv/bin/activate
if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
echo '✅ Serwer gotowy.'