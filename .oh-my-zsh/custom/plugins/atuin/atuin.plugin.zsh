
# pywal init
if (($+commands[atuin] ));then
  eval "$(atuin init zsh)"
else
  echo'[oh-my-zsh] wal not found, please install it from https://github.com/dylanaraps/pywal' 
fi
