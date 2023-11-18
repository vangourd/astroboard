tmux new-session -d -s astroboard
tmux split-window -h
tmux select-pane -t 0
tmux send-keys 'cd backend/ && cargo build && cargo watch -q' C-m
tmux select-pane -t 1
tmux send-keys 'cd frontend/ && npm install && nodemon -w src/ --exec npm run astro build' C-m
tmux attach-session -t astroboard