
if [ -n "$TMUX" ];
then
  echo Inside tmux
  fish
  #source ~/.bashrc
else
  source ~/.bashrc
  if [ -f ~/.log.sh ]; then
      . ~/.log.sh
  fi
fi

