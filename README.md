# dotfiles-pinephone

My linux config files for my [pinephone](https://www.pine64.org/pinephone/).

I currently use Arch Linux ARM with the phosh desktop environment (installed with full-disk encryption thanks to [this script](https://github.com/dreemurrs-embedded/archarm-mobile-fde-installer)).

I use `stow` to automatically create symbolic links.

See also my other [dotfiles](https://github.com/dbeley/dotfiles) repo for other ideas.


## Folders

- git
- gtk: dark theme
- firefox: some tweaks (`user.js` needs to be copied manually to `~/.mozilla/firefox/*****.default-esr` as the profile name is random)

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
cd ~
sudo apt install git stow
git clone https://github.com/dbeley/dotfiles-pinephone
cd dotfiles-pinephone
chmod +x *.sh
./mobian-theme.sh
```


## Distros

I have tried several distros, here are some thoughts:

- Archlinux ARM
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
	- seems slower than Mobian
- Manjaro ARM
	- nice out-of-the-box theme (thanks to the papirus icon theme)
	- too much preinstalled apps
	- no installer so no support for full-disk encryption
	- seems slower than Mobian
