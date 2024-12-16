CYME_VERSION=v2.1.1-1

sudo apt update
sudo apt install ffmpeg imagemagick jackd2 jackd2-firewire qjackctl
sudo apt install 7zip-rar bat btop curl duf eza fd-find fonts-firacode fzf \
    git grep kitty neo-cli p7zip-full pipx ripgrep ssh tmux tmuxp wget \
    zoxide zsh
curl -OL https://github.com/tuna-f1sh/cyme/releases/download/${CYME_VERSION}/cyme-${CYME_VERSION}-amd64.deb
sudo dpkg -i cyme-${CYME_VERSION}-amd64.deb && rm cyme-${CYME_VERSION}-amd64.deb
curl -OL https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-linux-amd64.deb
sudo dpgk -i fastfetch-linux-amd64.deb && rm fastfetch-linux-amd64.deb
curl -OL https://www.stereotool.com/download/stereo_tool_gui_jack_64
sudo mv stereo_tool_gui_jack_64 /usr/local/bin/stereo-tool-jack
sudo cp ./assets/stereo-tool.desktop /usr/share/applications/stereo-tool.desktop
sudo cp ./assets/stereo-tool.png /usr/share/icons/hicolor/48x48/apps/stereo-tool.png
sudo cp ./assets/stereo-tool.svg /usr/share/icons/hicolor/scalable/apps/stereo-tool.svg
