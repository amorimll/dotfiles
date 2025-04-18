#!/bin/bash

# Argumentos passados pelo módulo
PROCESS_NAME="$1"        # Nome do processo (ex: chrome, kitty, discord)
ICON="$2"                # Ícone a ser exibido
COLOR_ACTIVE="$3"        # Cor personalizada quando o processo está ativo
COLOR_INACTIVE="#8080c8" # Cor quando o processo está inativo
FONT="2"                 # Índice da fonte no Polybar (font-1, ajustado para size=12)

if pgrep -x "$PROCESS_NAME" >/dev/null; then
  echo "%{T$FONT}%{F$COLOR_ACTIVE} $ICON %{T-}"
else
  echo "%{T$FONT}%{F$COLOR_INACTIVE} $ICON %{T-}"
fi
