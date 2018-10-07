eval $(gdircolors ~/.dircolors-solarized)
eval $(gdircolors /Users/n-sagara/Documents/git2018/solarized.git/dircolors-solarized-master/dircolors.ansi-universal )
alias ssh='~/bin/ssh-with-changing-profile.sh'
alias qr2cp="pbpaste | sed '/+--/d' | sed -e 's/|//' | sed -e 's/|\$//' | sed -e '2,$ s/ //g' | tr '|' '\t'| pbcopy"
