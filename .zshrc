#PROMPT="%n@%m:%B%F{cyan}%~%f$ %b"
eval "$(/opt/homebrew/bin/brew shellenv)"
export CLICOLOR=1
export PS1=$'%n@%m:\e[0;36m%~\e[0m$ '


#YT Downloader
function yta () yt-dlp -f 'ba' -x --audio-format wav $1
function ytdl () yt-dlp -P "~/Downloads/" --recode mp4 -o "%(id)s.%(ext)s" $1

#Aliases
alias dev='cd ~/Developer'
alias n='nvim'

export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"
