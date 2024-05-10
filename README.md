# Dotfiles

Não Esqueça de realizar um backup antes de qualquer coisa.

## Instalação

```bash
git clone https://github.com/akicodeoficial/dotfiles ~/.dotfiles
```

## Uso

```bash
cp git/.gitconfig.example .gitconfig
```

> Configurando o Git

```bash
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
```

> Configurando nvm

```bash
ln -s $HOME/.dotfiles/.nvmrc $HOME/.nvmrc
```

> Exibir * ao invés da senha no terminal

```bash
sudo cp $HOME/.dotfiles/sudoers /etc/sudoers
```

> Configurando o Terminal Alacritty

```bash
ln -s $HOME/.dotfiles/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
```

> Configurando shell bash

```bash
ln -s $HOME/.dotfiles/.bash_logout $HOME/.bash_logout
ln -s $HOME/.dotfiles/.bash_profile $HOME/.bash_profile
```

## Criador

<div>
  <img src="https://avatars.githubusercontent.com/u/126093767?v=4" width="100" />
  <br />
  <a href="https://github.com/akicodeoficial">Alan Silva</a>
</div>