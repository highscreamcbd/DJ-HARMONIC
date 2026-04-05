#!/bin/bash
# DJ Harmonic — Installeur automatique v8.3
APP_NAME="DJ Harmonic.app"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$SCRIPT_DIR/$APP_NAME"
DEST="/Applications/$APP_NAME"

echo "╔══════════════════════════════════════╗"
echo "║      DJ Harmonic v8.3 — Installer    ║"
echo "╚══════════════════════════════════════╝"
echo ""

if [ ! -d "$SRC" ]; then
  echo "❌ Erreur: DJ Harmonic.app introuvable dans ce dossier."
  echo "   Assure-toi que l'app et cet installeur sont dans le même dossier."
  read -p "Appuie sur Entrée pour quitter..." dummy
  exit 1
fi

if [ -d "$DEST" ]; then
  echo "🔄 Ancienne version détectée — mise à jour..."
  rm -rf "$DEST"
fi

echo "📦 Copie de DJ Harmonic dans /Applications..."
cp -r "$SRC" "$DEST"

echo "🔓 Suppression de la quarantaine macOS..."
xattr -cr "$DEST"

echo "🔧 Permissions d'exécution..."
chmod +x "$DEST/Contents/MacOS/DJ Harmonic"

echo ""
echo "✅ DJ Harmonic v8.3 installé avec succès !"
echo ""
echo "🌐 Navigateurs supportés : Brave, Chrome, Edge, Arc, Opera, Firefox"
echo "⚠️  Safari non supporté"
echo ""
echo "▶️  Pour lancer : Spotlight (⌘ Space) → 'DJ Harmonic'"
echo ""

open /Applications
read -p "Appuie sur Entrée pour fermer..." dummy
