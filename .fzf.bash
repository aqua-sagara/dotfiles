# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/naoyuki/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/naoyuki/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/naoyuki/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/naoyuki/.fzf/shell/key-bindings.bash"

