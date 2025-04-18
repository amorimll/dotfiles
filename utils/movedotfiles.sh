#!/bin/bash

# Definir o diretório de destino
DEST_DIR="$HOME/dotfiles/.config"
WALLPAPERS_DIR="$HOME/dotfiles/.wallpapers"

rm -rf "$DEST_DIR"

# Verificar se o diretório de destino existe, se não criar
if [ ! -d "$DEST_DIR" ]; then
  echo "Criando o diretório de destino $DEST_DIR..."
  mkdir -p "$DEST_DIR"
fi

# Copiar as configurações para o diretório de destino
cp -r "$HOME/.config/bspwm/" "$DEST_DIR"
cp -r "$HOME/.config/kitty" "$DEST_DIR"
cp -r "$HOME/.config/picom" "$DEST_DIR"
cp -r "$HOME/.config/polybar" "$DEST_DIR"
cp -r "$HOME/.config/sxhkd" "$DEST_DIR"
cp -r "$HOME/.config/rofi" "$DEST_DIR"
cp -r "$HOME/.config/nvim" "$DEST_DIR"
cp -r "$HOME/.config/gtk-3.0" "$DEST_DIR"

cp -r "$HOME/.wallpapers/." "$WALLPAPERS_DIR"

echo "Configurações copiadas para $DEST_DIR e $WALLPAPERS_DIR"
