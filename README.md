# ☁️ Script d'installation de Cloudflared

---

## 📌 Distributions supportées

- Arch Linux 🌀
- Fedora 🟣
- RHEL / CentOS 🔵
- Debian 🌀
- Ubuntu 🟠

---

## 📥 Installation

1. **Cloner le dépôt :**
   ```bash
   git clone https://github.com/Fly072pp/install-cloudflared
   ```

2. **Se déplacer dans le dossier :**
   ```bash
   cd install-cloudflared/
   ```

3. **Rendre le script exécutable :**
   ```bash
   chmod +x install.sh
   ```

4. **Lancer le script :**
   ```bash
   sudo ./install.sh
   ```

---

## 🤝 Contribuer

Les contributions sont les bienvenues ! Merci de :

- Créer une branche pour vos modifications.
- Soumettre une **pull request**.
- Documenter vos changements dans le README si nécessaire.

---

## 🛠️ Dépannage (Troubleshooting)

- **Erreur :** `dpkg: dependency problems`  
  💡 **Solution :** Exécuter :
  ```bash
  sudo apt-get install -f -y
  ```

- **Erreur :** `pacman: keyring`  
  💡 **Solution :** Exécuter :
  ```bash
  sudo pacman -S archlinux-keyring --noconfirm
  ```

- **Erreur :** `cloudflared: command not found`  
  💡 **Solution :** Vérifier que `/usr/local/bin` ou `/usr/bin` est bien dans votre PATH.
  
**Autres erreurs ?** Crée une Issue