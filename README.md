# 🌿 Hyprland Dotfiles – Weird AF but Clean™

This is my personal Arch Linux Hyprland setup – minimal, fast, functional, and aesthetic. Managed using `stow` for simple and clean dotfile management.

---

## 🧰 Dependencies

Make sure the following packages are installed:

### Core
- [hyprland](https://github.com/hyprwm/Hyprland) – Wayland window manager
- [hyprpaper](https://github.com/hyprwm/hyprpaper) – Wallpaper daemon
- [hyprpanel](https://github.com/Jas-SinghFSU/HyprPanel) – Lightweight status panel (AUR)

### Terminal & Shell
- [kitty](https://sw.kovidgoyal.net/kitty/) – GPU-accelerated terminal
- [zsh](https://www.zsh.org/) – Shell
- [oh-my-zsh](https://ohmyz.sh/) – Zsh framework

### UI & Tools
- [wofi](https://github.com/SimplyCEO/wofi) – Wayland launcher (rofi alternative)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) – Neofetch on steroids

---

## 📦 Installation

### Using `pacman` and `yay`

```bash
# Install official packages
sudo pacman -S hyprland hyprpaper kitty fastfetch zsh wofi stow

# Install hyprpanel from AUR
yay -S hyprpanel-git

# (Optional) Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install stow
sudo pacman -S stow
```

---

## 📁 Dofiles layout
### This repo uses GNU Stow to symlink dotfiles into your system.
```bash
dotfiles/
├── hypr/         -> ~/.config/hypr/
├── hyprpanel/    -> ~/.config/hyprpanel/
├── kitty/        -> ~/.config/kitty/
├── wofi/         -> ~/.config/wofi/
├── fastfetch/    -> ~/.config/fastfetch/
├── zsh/          -> ~/.zshrc,
├── bash/          -> ~/.bashrc,
├── BetterDiscord/          -> ~/.config/BetterDiscord

```

---

## Usage
```bash
# Clone this repo
git clone https://github.com/07calc/aurora ~/aurora
cd ~/aurora
rm -rf .git

# Stow the configs (creates symlinks in your home directory)
stow hypr hyprpanel kitty wofi fastfetch zsh bash

# Set Zsh as default shell
chsh -s $(which zsh)

# (Optional) stow nvim, BetterDiscord
stow nvim BetterDiscord
```

---


## 📸 Screenshots
![2025-06-17-182536_hyprshot](https://github.com/user-attachments/assets/9e1f4c36-a3d6-41d7-aeaa-240071c60215)
---
![2025-06-17-182837_hyprshot](https://github.com/user-attachments/assets/6e93bbc6-4361-45c9-8687-79d903cc60dc)
---
![2025-06-17-182544_hyprshot](https://github.com/user-attachments/assets/6d5723b1-577e-43b7-b55b-101afe7aba96)
---
![2025-06-17-182551_hyprshot](https://github.com/user-attachments/assets/7bf15723-b17f-4def-ae92-cc0e5daeb5e0)
---


## 📜 License
### MIT – use, modify, share freely. Credit appreciated.
