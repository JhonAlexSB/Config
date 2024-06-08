
if [ -n "$TMUX" ];
then
#  fish
  #source ~/.bashrc
  source ~/.bashrc
  clear
else
  source ~/.bashrc
  if [ -f ~/.log.sh ]; then
      . ~/.log.sh
  fi
fi

