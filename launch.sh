tmux new-session -d -s astroboard
tmux split-window -h
tmux select-pane -t 0
tmux send-keys 'cargo watch -q -C backend/' C-m
tmux select-pane -t 1
tmux send-keys 'nodemon -w frontend/ --exec npm run astro build' C-m
tmux attach-session -t astroboard