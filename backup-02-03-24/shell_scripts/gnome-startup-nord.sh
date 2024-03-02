# alacritty theme
ln -sf ~/.config/alacritty/gnome-alacritty.yml ~/.config/alacritty/alacritty.yml

# vscode theme
sed -i 's/"workbench.colorTheme":.*/"workbench.colorTheme": "Nord",/' .config/Code/User/settings.json
