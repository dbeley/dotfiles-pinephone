# dotfiles-pinephone

My linux config files for my pinephone. I currently use Mobian with the phosh desktop environment.

It uses `stow` to automatically create symbolic links.

```
sudo apt install git stow
git clone https://github.com/dbeley/dotfiles-pinephone
cd dotfiles-pinephone
stow gtk
```

- git
- gtk: dark theme, papirus icon theme
- firefox: some tweaks (`user.js` needs to be copied manually to `~/.mozilla/firefox/*****.default-esr` as the profile name is random)

See also my other [dotfiles](https://github.com/dbeley/dotfiles) repo for other ideas.

## Distros

I have tried several distros, here are some thoughts:

- Mobian
	- repos lacks `gnome-podcasts`
	- docking mode is hit or miss
- PostmarketOS
	- other languages difficult to install (need to install the `*-lang` specific packages)
	- package manager has very few features
	- repos lacks `gnome-todo`
- Manjaro ARM (haven't spend much time with it)
	- nice out-of-the-box theme (thanks to the papirus icon theme)
	- no installer so no support for full-disk encryption (dealbreaker for me)
