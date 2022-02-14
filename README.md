# dotfiles-pinephone

My linux config files for my [pinephone](https://www.pine64.org/pinephone/).

I currently use Arch Linux ARM with the phosh desktop environment (installed with full-disk encryption thanks to [this script](https://github.com/dreemurrs-embedded/archarm-mobile-fde-installer)).

I use `stow` to automatically create symbolic links.

See also my other [dotfiles](https://github.com/dbeley/dotfiles) repo for other ideas.

## Folders

- autostart: autostart gammastep
- bash
- firefox: some tweaks (`user.js` needs to be copied manually to `~/.mozilla/firefox/*****.default-esr` as the profile name is random)
- fish
- gammastep: automatically change color temperature
- git
- gtk: dark theme
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

## Scripts

- `mobian_reset-control-center.sh`: the gnome settings might crash if you open empty sections, this script resets the last seen panel of the gnome control center.
- `mobian_settings.sh`: some settings I use
- `mobian_theme.sh`: set the gtk theme to `Adwaita-dark` and the icon theme to `Papirus-Dark` (the papirus icon pack is generally not installed by default on most distros)

### Usage

```
chmod +x *.sh
./mobian-theme.sh
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

## Distros

I have tried several distros, here are some thoughts:

- Archlinux ARM (https://github.com/dreemurrs-embedded/Pine64-Arch)
    - installer allows for full-disk encryption
	- lots of config to do by hand (hence the scripts)
	- repos have almost everything
	- docking mode needs a reboot from time to time
	- best all-around
- Mobian
	- docking mode is hit or miss
	- repos lack `gnome-podcasts`
	- very stable
- PostmarketOS
	- other languages than english difficult to install (need to install the `*-lang` specific packages)
	- package manager has very few features
	- repos lack `gnome-todo`
	- slower than Mobian
- Manjaro ARM
	- nice out-of-the-box theme (thanks to the papirus icon theme)
	- too much preinstalled apps
	- no installer so no support for full-disk encryption
	- slower than Mobian
