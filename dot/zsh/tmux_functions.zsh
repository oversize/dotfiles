
function tn() {
    tmux new-session -s $1
}

# list all session. even short then tmux ls
function tls() {
    tmux list-sessions
}

# attach to a session given by $1
function ta() {
    tmux attach -t $1
}

# kill session given by :w $1
function tks() {
    tmux kill-session -t $1
}

