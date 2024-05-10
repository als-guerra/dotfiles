# Dotfiles

## Iniciando

```sh
git clone https://github.com/als-guerra/dotfiles.git .dotfiles

cd .dotfiles
```

### Git

```sh
cp example.gitconfig .gitconfig

ln -s $HOME/.dotfiles/.gitconfig $HOME/
```

### NVM

```sh
# nodejs 18

ln -s $HOME/.dotfiles/.nvmrc $HOME/
```

### Docker

```sh
cp -r $HOME/.dotfiles/.docker $HOME/
```

### Polybar

```sh
cp $HOME/.dotfiles/polybar-config/config.ini $HOME/.config/polybar
```

### Bash

```sh
ln -s $HOME/.dotfiles/arch/.bash_profile $HOME/
ln -s $HOME/.dotfiles/arch/.bash_logout $HOME/
ln -s $HOME/.dotfiles/arch/.bashrc $HOME/
ln -s $HOME/.dotfiles/arch/.shellrc $HOME/
ln -s $HOME/.dotfiles/arch/.zshrc $HOME/
ln -s $HOME/.dotfiles/arch/.aliasesrc $HOME/
```

### Outros

```sh
ln -s $HOME/.dotfiles/.conkyrc $HOME/
ln -s $HOME/.dotfiles/.dmrc $HOME/
ln -s $HOME/.dotfiles/.genentriesrc $HOME/
ln -s $HOME/.dotfiles/.Xresources $HOME/
ln -s $HOME/.dotfiles/.yarnrc $HOME/
ln -s $HOME/.dotfiles/alacritty.toml $HOME/.config/alacritty/

cp $HOME/.dotfiles/angular-config.json $HOME/
cp $HOME/.dotfiles/autostart.sh $HOME/.config/bspwm/autostart.sh
cp $HOME/.dotfiles/picom.conf $HOME/.config/bspwm/picom.conf
cp $HOME/.dotfiles/sxhkdrc $HOME/.config/bspwm/sxhkd/
```

### Script

```sh
chmod +x $HOME/.config/bspwm/autostart.sh
```
