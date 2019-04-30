kp() {
    ps -ef | fzf -m | awk '{print $2}' | xargs kill $@
}

c() {
    fasd -Rfl "$1" | fzf -1 -0 --no-sort +m
}
