eval "$(/opt/homebrew/bin/brew shellenv)"
export CLICOLOR=1
export PS1=$'%n@%m:\e[0;36m%~\e[0m$ '


#YT Downloader
function yta () yt-dlp -f 'ba' -x --audio-format wav $1
function ytdl () yt-dlp -P "~/Downloads/" --recode mp4 -o "%(id)s.%(ext)s" $1

#Aliases
alias dev='cd ~/Developer'
alias n='nvim'
alias tmux='tmux -u'

export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"

export PATH="/Users/jan/.cargo/bin:$PATH"

# bun completions
[ -s "/Users/jan/.bun/_bun" ] && source "/Users/jan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
