unalias -a
PROMPT="%n@%m:%B%F{cyan}%~%f$ %b"

#YT Downloader
function ytrb () yt-dlp -f 'ba' -x --audio-format wav $1 -P "~/Music/PioneerDJ/Songs"
function yta () yt-dlp -f 'ba' -x --audio-format wav $1
function yt () yt-dlp $1 -P "~/Downloads/" --recode mp4 -o "%(id)s.%(ext)s"

#Toggle Apple pnh
function pnh() {
  [[ $(defaults read -g ApplePressAndHoldEnabled) -eq "0" ]] && \
    { defaults write -g ApplePressAndHoldEnabled -bool true; echo "ApplePressAndHold enabled"; } || \
    { defaults write -g ApplePressAndHoldEnabled -bool false; echo "ApplePressAndHold disabled"; }
}


#Aliases
alias ls='gls -h --group-directories-first --color=auto'
alias grep='grep --color'
alias dev='cd ~/Developer'
alias nv="nvim"
alias v="vim"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib
