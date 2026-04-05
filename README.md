# 🎧 DJ Harmonic

**DJ Harmonic** est un agent SoundCloud intelligent pour DJs — il analyse les tracks en temps réel (BPM + tonalité Camelot) et filtre automatiquement les sons harmoniquement compatibles.

![Version](https://img.shields.io/badge/version-8.3-blue)
![macOS](https://img.shields.io/badge/macOS-Sequoia%20%7C%20Tahoe-black)
![Navigateurs](https://img.shields.io/badge/navigateurs-Brave%20%7C%20Chrome%20%7C%20Edge%20%7C%20Arc%20%7C%20Opera%20%7C%20Firefox-green)

---

## ✨ Fonctionnalités

- 🎵 **Analyse BPM + Clé** en temps réel via FFT/DSP
- 🔑 **Roue de Camelot** — filtre automatique des clés harmoniques compatibles
- ✨ **Toutes les clés** — mode sans filtre pour une recherche maximale
- 🎛️ **55 genres** — toutes les catégories SoundCloud (House, Techno, Trance, DnB, Hip-Hop...)
- 🌐 **Multi-navigateur** — Brave, Chrome, Edge, Arc, Opera, Chromium, Firefox
- 📥 **Téléchargement direct** des tracks FREE depuis l'interface
- 🕒 **Filtre temporel** — tracks des derniers 1/2/3/6 mois ou 1 an

---

## 🖥️ Prérequis

- macOS Sequoia (15) ou Tahoe (16)
- Un navigateur compatible installé :
  - ✅ Brave Browser *(recommandé)*
  - ✅ Google Chrome
  - ✅ Microsoft Edge
  - ✅ Arc
  - ✅ Opera / Chromium
  - ✅ Firefox

> ⚠️ **Safari non supporté** (protocole de debug incompatible)

---

## 🚀 Installation

### Option 1 — Installeur automatique (recommandé)

1. Télécharge le fichier `DJ_Harmonic_v8.3.zip` depuis la section [Releases](../../releases)
2. Décompresse le ZIP
3. Double-clique sur **`Installer - DJ Harmonic.command`**
4. Si macOS bloque : clic droit → **Ouvrir** → **Ouvrir quand même**
5. L'app s'installe dans `/Applications` automatiquement

### Option 2 — Installation manuelle

```bash
# Copier l'app
cp -r "DJ Harmonic.app" /Applications/

# Supprimer la quarantaine macOS (important !)
xattr -cr "/Applications/DJ Harmonic.app"

# Rendre le script exécutable
chmod +x "/Applications/DJ Harmonic.app/Contents/MacOS/DJ Harmonic"
```

---

## 🎮 Utilisation

1. Lance **DJ Harmonic** depuis `/Applications` (ou Spotlight : `⌘ Space` → "DJ Harmonic")
2. Le navigateur s'ouvre automatiquement sur SoundCloud
3. Configure tes paramètres via le bouton **← Config** :
   - 🎵 Genres à scanner
   - 🎚️ Plage BPM
   - 🔑 Clés Camelot (ou **✨ Toutes** pour aucun filtre)
   - 🕒 Période temporelle
4. Clique **Scan** — l'agent analyse les tracks et affiche les compatibles

---

## 📁 Structure du projet

```
DJ Harmonic.app/
└── Contents/
    ├── Info.plist
    ├── MacOS/
    │   └── DJ Harmonic          ← Script principal (bash + JS injecté via CDP)
    └── Resources/
        └── AppIcon.icns
```

Le script principal contient 4 modules JavaScript encodés en base64 :
- **p1** — Moteur DSP/FFT/BPM/Détection de tonalité
- **p2** — Interface CSS + DOM du panneau (480px)
- **p3** — Config UI : genres, clés Camelot, BPM, segments
- **p4** — startScan, openModal, lecture, téléchargement

---

## 🔐 Note sur la sécurité macOS

Cette app n'est pas signée avec un certificat Apple Developer ($99/an).
macOS affiche donc un avertissement "origine inconnue" à la première ouverture.

**Pour bypasser Gatekeeper :**
```bash
xattr -cr "/Applications/DJ Harmonic.app"
```
Ou : clic droit sur l'app → Ouvrir → Ouvrir quand même.

---

## 📋 Changelog

### v8.3 (2026-04-06)
- ✅ Support multi-navigateur (Brave, Chrome, Edge, Arc, Opera, Chromium, Firefox)
- ✅ 55 genres SoundCloud organisés par catégorie
- ✅ Détection automatique du navigateur installé

### v8.2
- ✅ Bouton "✨ Toutes les clés" pour désactiver le filtre harmonique
- ✅ Bouton "Aucune" pour déselectionner toutes les clés

### v8.1
- ✅ Version stable initiale

---

## 🤝 Contribution

Pull requests bienvenues ! Pour les bugs, ouvre une [Issue](../../issues).

---

*Made with ❤️ for DJs*
