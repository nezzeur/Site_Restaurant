# MRS Restaurant 🍽️

Site web statique pour un restaurant local présentant les menus hebdomadaires.

**🌐 Site en ligne :** [https://mrss-33d14.web.app/](https://mrss-33d14.web.app/)

## 🚀 Installation rapide

```bash
# Cloner le projet
git clone https://github.com/nezzeur/Site_Restaurant.git
cd Site_Restaurant

# Installer Hugo (si pas déjà fait)
# macOS
brew install hugo
# Windows
choco install hugo
# Linux
sudo apt install hugo

# Lancer le serveur local
hugo server -D

# Ouvrir http://localhost:1313
```

## 📝 Ajouter un menu

1. Créer un fichier dans `content/menus/` :

```markdown
---
title: "Menu de la semaine du 7 au 11 juillet"
date: 2025-07-07T00:00:00Z
week_start: "2025-07-07"
week_end: "2025-07-11"
weekly_menu:
  lundi:
    - "Plat 1"
    - "Plat 2"
  mardi:
    - "Plat 1"
    - "Plat 2"
---
```

2. Recharger la page

## 🚀 Déploiement Firebase

```bash
# Installer Firebase CLI
npm install -g firebase-tools

# Se connecter
firebase login

# Construire et déployer
hugo
firebase deploy
```

## 🛠️ Tech Stack

- **Hugo** - Générateur de sites statiques
- **Firebase Hosting** - Hébergement
- **JavaScript** - Fonctionnalités interactives
- **Figma** - Design

---

**Auteur :** Peru Noa
