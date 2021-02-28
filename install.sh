#!/data/data/com.termux/files/usr/bin/bash

install() {
  echo -e "\e[93m
   ╭────────────────────────────────────╮
   |  This  script  will  install  all  |
   |  the requirements for installing   |
   |  Neovim text editor on Termux 🤗   |
   ╰────────────────────────────────────╯
   \e[97m
   This will take a while, depends on your network speed
   hit <ENTER> to continue.
  \e[0m"
  read
  apt install neovim nodejs -y
  apt install neovim nodejs -y
  echo -e "\e[92m Almost done.. be patient!"
  echo -e "\e[93m preparing npm for coc.nvim:\e[0m"
  npm i -g neovim
  mv $HOME/.config/nvim $HOME/.config/nvim.old
  mkdir -p $HOME/.termux
  cp icon-support.ttf $HOME/.termux/font.ttf
  mkdir -p $HOME/.config/nvim
  cp -r * $HOME/.config/nvim
  rm $HOME/.config/nvim/install && rm $HOME/.config/nvim/icon-support.ttf
  echo -e "\e[92mInstalling plugins...\e[0m"
  nvim --headless +PlugInstall +qall > /dev/null 2>&1
  termux-reload-settings
  echo -e "\e[92m
   Successfully installed the dependencies!
   Now you're ready to go!

   \e[93mAfter this you might want to install any completion plugins using coc.nvim by typing :CocInstall <coc-plugin> inside neovim.
  "
}

install
