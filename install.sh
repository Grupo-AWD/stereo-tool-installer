CYME_VERSION=v2.1.1

echo 'Updating repositories'
sudo apt update

echo 'Installing dependencies'
sudo apt install ffmpeg imagemagick jackd2 jackd2-firewire qjackctl

echo 'Installing tools'
sudo apt install 7zip-rar bat btop curl duf eza fd-find fonts-firacode fzf \
    git grep kitty neo-cli p7zip-full pipx ripgrep ssh tmux tmuxp wget \
    zoxide zsh

echo 'Downloading cyme...'
curl -OL https://github.com/tuna-f1sh/cyme/releases/download/${CYME_VERSION}/cyme-${CYME_VERSION}-1-amd64.deb \
    && sudo dpkg -i cyme-${CYME_VERSION}-1-amd64.deb \
    && rm cyme-${CYME_VERSION}-1-amd64.deb

echo 'Downloading fastfetch...'
curl -OL https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-linux-amd64.deb \
    && sudo dpkg -i fastfetch-linux-amd64.deb \
    && rm fastfetch-linux-amd64.deb

echo 'Downloading Stereo Tool...'
curl -OL https://www.stereotool.com/download/stereo_tool_gui_jack_64 \
    && sudo mv stereo_tool_gui_jack_64 /usr/local/bin/stereo-tool-jack
sudo cp ./assets/stereo-tool-jack.desktop /usr/share/applications/stereo-tool-jack.desktop
sudo cp ./assets/stereo-tool-jack.png /usr/share/icons/hicolor/48x48/apps/stereo-tool-jack.png
sudo cp ./assets/stereo-tool-jack.svg /usr/share/icons/hicolor/scalable/apps/stereo-tool-jack.svg
