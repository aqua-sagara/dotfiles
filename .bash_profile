eval $(gdircolors ~/.dircolors-solarized)
alias ls='gls --color=auto'
eval $(gdircolors /Users/n-sagara/Documents/git2018/solarized.git/dircolors-solarized-master/dircolors.ansi-universal )
alias ssh='~/bin/ssh-with-changing-profile.sh'
bg_color=SolarizedDark
osascript -e 'tell application "Terminal" to set current settings of first window to settings set "'$bg_color'"'
alias qr2cp="pbpaste | sed '/+--/d' | sed -e 's/|//' | sed -e 's/|\$//' | sed -e '2,$ s/ //g' | tr '|' '\t'| pbcopy"
