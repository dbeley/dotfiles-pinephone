# dotfiles-pinephone

My linux config files for my [pinephone](https://www.pine64.org/pinephone/).

I currently use Arch Linux ARM with the phosh desktop environment (installed with full-disk encryption thanks to [this script](https://github.com/dreemurrs-embedded/archarm-mobile-fde-installer)).

I use `stow` to automatically create symbolic links.

See also my other [dotfiles](https://github.com/dbeley/dotfiles) repo for other ideas.

## Folders

- archives: config files and scripts not used anymore
- bash
- firefox: some tweaks (`user.js` needs to be copied manually to `~/.mozilla/firefox/*****.default-esr` as the profile name is random)
- fish
- git
- nvim
- oh-my-fish
- qutebrowser: `mkdir -p ~/.config/qutebrowser`
- screenshot2app: a very simple screenshot app using `grim` (`sudo stow -t /usr/local screenshot2app`)
- squeekboard: add keyboard layout for us-intl (supress continuous errors in log)
- tmux: needs [tpm](https://github.com/tmux-plugins/tpm)

### Usage

```
cd ~
sudo apt install git stow
git clone https://github.com/dbeley/dotfiles-pinephone
cd dotfiles-pinephone
stow gtk # will create symbolic links in your home directory
```

## Cheatsheet

###  Jumpdrive

- https://github.com/dreemurrs-embedded/Jumpdrive
- https://wiki.pine64.org/index.php/PinePhone_Installation_Instructions

```
sudo dd if=pine64-pinephone.img of=/dev/[DEVICE] bs=1M status=progress conv=fsync
```

### Archlinux FDE

- https://github.com/dreemurrs-embedded/archarm-mobile-fde-installer
- dependencies on archlinux desktop: wget, squashfs-tools, f2fs-tools

### Post-install

```
wal -i Pictures/wallpaper.jpg
```

```
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

- firefox: run one time, then copy `user.js` to `~/.mozilla/firefox/*****.default-release` folder 
