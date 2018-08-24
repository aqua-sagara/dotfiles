# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/n-sagara/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/n-sagara/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/n-sagara/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/n-sagara/.fzf/shell/key-bindings.zsh"

