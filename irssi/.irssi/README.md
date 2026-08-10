# Note

Need to create a soft link from `.irssi/scripts/sound.pl` to `.irssi/scripts/autorun/sound.pl`

Because I can't find the installation script.

Ex.

```bash
mkdir -p $HOME/.irssi/scripts/autorun
ln -s $HOME/.irssi/scripts/sound.pl $HOME/.irssi/scripts/autorun/sound.pl
```

btw, `sound.pl` has a dependency package that you can install using the following command if you are using Debian/Ubuntu:

```bash
sudo apt update && sudo apt install sox libsox-fmt-all
```

