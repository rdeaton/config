mkdir -p ~/.local/share/fonts

pushd .build
git clone https://github.com/powerline/fonts.git --depth=1
pushd fonts
./install.sh
popd ..
rm -rf fonts
popd

wget -q --show-progress -O source-code-pro.zip https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip -q source-code-pro.zip -d source-code-pro
cp -v source-code-pro/*/OTF/*.otf ~/.local/share/fonts/
fc-cache -f
rm -rf source-code-pro{,.zip}
