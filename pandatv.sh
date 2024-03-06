#!/system/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo '${GREEN}[1/3]${NC} - Definindo Diretorios'
DIRECTORY=/sdcard/Panda/scripts
MOUSEPRO_DIRECTORY=/sdcard/Android/data/com.panda.mouse/files/scripts
GAMEPADPRO_DIRECTORY=/sdcard/Android/data/com.panda.gamepad/files/scripts

echo '~ Arquivos Definidos'
sleep 1
echo '${GREEN}[2/3]${NC} - Injetando Scripts...'

if [ -d $DIRECTORY ]; then
{
  sh scripts/inject2.sh
  if [ -d $MOUSEPRO_DIRECTORY ]; then
  sh $MOUSEPRO_DIRECTORY/activate.sh
  echo '${GREEN}[3/3]${NC} - Panda Mouse Pro Ativado...'
  fi
  if [ -d $GAMEPADPRO_DIRECTORY ]; then
  sh $GAMEPADPRO_DIRECTORY/activate.sh
  echo '${GREEN}[3/3]${NC} - Panda Gamepad Pro Ativado...'
  fi
} 2> /dev/null
  chmod +x pandatv.sh && mv pandatv.sh ~/
  echo 'Panda Ativado com Sucesso by Rzn'
fi
