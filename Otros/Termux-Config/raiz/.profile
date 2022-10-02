
if [ -n "$TMUX" ];
then
  echo Inside tmux
else
  source ~/.bashrc
  if [ -f ~/.log.sh ]; then
      . ~/.log.sh
  fi
fi

