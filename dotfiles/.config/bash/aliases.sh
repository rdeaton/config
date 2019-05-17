# kill process
kp() {
    ps -ef | fzf -m | awk '{print $2}' | xargs kill $@
}

# change directory?
c() {
    fasd -Rfl "$1" | fzf -1 -0 --no-sort +m
}

# git new branch
gnb() {
    git checkout -b "rdeaton_$(date +%Y%m%d)_$1"
}

# virtualenv activate
va() {
    . .venv/bin/activate
}

# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
bip() {
  local inst=$(brew search | fzf -m)

  if [[ $inst ]]; then
    for prog in $(echo $inst); do
        brew install $prog;
    done;
  fi
}
