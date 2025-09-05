#!/usr/bin/env bash
cd $(tmux display-message -p -F "#{pane_current_path}")
url=$(git remote get-url origin)

if [[ ! -z $url ]]; then
	[[ $url == ssh://* ]] && url="${url#ssh://}" && exit 1
	if [[ $url == git@* ]]; then
		url="${url#git@}"
		url=$(echo "$url" | sed -E 's/:[0-9]+|:/\//')
		url="https://$url"
	fi
	open "$url"

else
	echo "No Repository found"
fi
