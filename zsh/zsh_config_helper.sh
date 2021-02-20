#!/usr/bin/bash

echo " ============================================================== "
echo " ===================== zsh config helper ====================== "
echo " ============================================================== "

echo "[+] ===================== Install oh-my-zsh ==================== "
echo `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
echo "[+] =========== Download zsh auto suggestions plugin =========== "
echo `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
echo "[+] =========== Download zsh syntax highlight plugin =========== "
echo `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
echo "[+] ========= Download zsh msfvenom completion plugin ========== "
echo `git clone https://github.com/Green-m/msfvenom-zsh-completion ~/.oh-my-zsh/custom/plugins/msfvenom`
echo "[+] ============= Download zsh powerlevel10k theme ============= "
echo `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
echo "[+] ============= Copy zsh config file to user home ============ "
`cp .zshrc ~`
