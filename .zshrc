eval "$(/opt/homebrew/bin/brew shellenv)"
export CLICOLOR=1
PROMPT='%n%f@%m:%F{cyan}%~%f$ '

#YT Downloader
function yta () yt-dlp -f 'ba' -x --audio-format wav $1
function ytdl () yt-dlp -P "~/Downloads/" --recode mp4 -o "%(id)s.%(ext)s" $1

#Aliases
alias dev='cd ~/Developer'
alias n='nvim'
alias tmux='tmux -u'

export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"

# Add cargo to PATH
export PATH="/Users/jan/.cargo/bin:$PATH"

export TYPST_PACKAGES=~/Documents/typst-packages/

# bun completions
[ -s "/Users/jan/.local/bun/_bun" ] && source "/Users/jan/.local/bun/_bun"
export BUN_INSTALL="$HOME/.local/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export GOPATH="$HOME/.local/go"

# zoxide
eval "$(zoxide init zsh)"
