sudo apt install -y rofi

# rofi-calc
sudo apt install -y rofi-dev qalc libqalculate-dev
pushd .build
git clone https://github.com/svenstaro/rofi-calc.git
pushd rofi-calc
git pull
autoreconf -i
mkdir build
cd build
../configure
make
sudo make install
popd
