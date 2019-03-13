pushd .build
git clone https://github.com/LukeSmithxyz/st.git
pushd st
git checkout master && git pull
make
sudo make install
popd
popd
