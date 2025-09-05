tmux list-sessions -F "#{session_name}" | grep -E "^[0-9]+$" | head -n1 | xargs -I {} tmux switch-client -t {} || tmux new-session -d \; switch-client -n
