#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
  echo "Ce script doit être exécuté avec des privilèges root."
  exit 1
fi

echo "Mise à jour des paquets..."
apt-get update -y

echo "Installation des dépendances..."
apt-get install -y curl gnupg lsb-release

echo "Téléchargement de cloudflared..."
ARCHITECTURE=$(uname -m)
if [[ "$ARCHITECTURE" == "x86_64" ]]; then
    URL="https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb"
elif [[ "$ARCHITECTURE" == "aarch64" ]]; then
    URL="https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64.deb"
else
    echo "Architecture non supportée!"
    exit 1
fi

curl -Lo cloudflared.deb "$URL"

echo "Installation de cloudflared..."
dpkg -i cloudflared.deb

apt-get install -f -y

cloudflared --version

echo "cloudflared a été installé avec succès!"
