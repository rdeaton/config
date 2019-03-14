sudo apt install -y rofi

# rofi-calc
sudo apt install -y rofi-dev qalc libqalculate-dev
pushd .build
git clone https://github.com/svenstaro/rofi-calc.git
cd rofi-calc
git pull
autoreconf -i
mkdir build
cd build
../configure
make
sudo make install
popd

# clipster and rofi integration
sudo apt install -y python-gi gir1.2-gtk-3.0
pushd .build
git clone https://github.com/mrichar1/clipster.git
cd clipster
git pull
cp clipster ~/.local/bin/clipster
popd

pushd .build
git clone https://github.com/gilbertw1/roficlip.git
cd roficlip
git pull
cp roficlip ~/.local/bin/roficlip
popd
