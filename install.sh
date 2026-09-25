#!/bin/bash

set -e # Interrompe a execução se qualquer comando falhar

echo "========>INICIANDO INSTALAÇÃO DO NOVO AMBIENTE GRÁFICO..."

sleep 1

cat << 'EOF'
                .88888888:.
               88888888.88888.
             .8888888888888888.
             888888888888888888
             88' _`88'_  `88888
             88 88 88 88  88888
             88_88_::_88_:88888
             88:::,::,:::::8888
             88`:::::::::'`8888
            .88  `::::'    8:88.
           8888            `8:888.
         .8888'             `888888.
        .8888:..  .::.  ...:'8888888:.
       .8888.'     :'     `'::`88:88888
      .8888        '         `.888:8888.
     888:8         .           888:88888
   .888:88        .:           888:88888:
   8888888.       ::           88:888888
   `.::.888.      ::          .88888888
  .::::::.888.    ::         :::`8888'.:.
 ::::::::::.888   '         .::::::::::::
 ::::::::::::.8    '      .:8::::::::::::.
.::::::::::::::.        .:888:::::::::::::
:::::::::::::::88:.__..:88888:::::::::::'
 `'.:::::::::::88888888888.88:::::::::'
       `':::_:' -- '' -'-' `':_::::'` 
------------------------------------------------
EOF

sleep 1

echo "========>BAIXANDO PACOTES ESSENCIAIS EM..."
for i in {5..1}; do
    echo $i
    sleep 1
done

sudo emerge --ask --verbose \
    gui-wm/hyprland \
    gui-wm/sway \
    gui-apps/swaync \
    gui-apps/waybar \
    gui-apps/waypaper \
    gui-apps/wofi

echo "========>BAIXANDO DOTFILES"
sleep 1
git clone https://github.com/kalMarxo/dotfiles.git "$HOME/dotfiles"


echo "========>APLICANDO DOTFILES EM..."
for i in {5..1}; do
    echo $i
    sleep 1
done

mkdir -p "$HOME/.config"

cd $HOME/dotfiles

stow -t "$HOME/.config" hypr waybar swaync fastfetch wofi waypaper autostart sway

echo "========>INSTALAÇÃO CONCLUÍDA COM SUCESSO!!!"

echo "========>ENCERRANDO OPERAÇÃO EM..."
for i in {5..1}; do
    echo $i
    sleep 1
done

exit 0