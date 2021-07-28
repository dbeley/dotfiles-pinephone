# dotfiles-pinephone

My linux config files for my pinephone. I currently use Mobian with the phosh desktop environment.

It uses `stow` to automatically create symbolic links.

```
sudo apt install git stow
git clone https://github.com/dbeley/dotfiles-pinephone
cd dotfiles-pinephone
stow gtk
```

- gtk: dark theme, papirus icon theme
- firefox: some tweaks (`user.js` needs to be copied manually to `~/.mozilla/firefox/*****.default-esr` as the profile name is random)
