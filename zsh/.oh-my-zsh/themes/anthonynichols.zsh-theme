ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

if [ -z ${DEFAULT_HOSTNAME+x} ]; then
  DEFAULT_HOSTNAME=$HOST
fi

function get_pwd() {
  echo "%{$fg[cyan]%}${PWD/$HOME/~}%{$reset_color%}"
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return

  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function usernamehost() {
  if [[ $HOST != $DEFAULT_HOSTNAME ]]; then
    echo "%{$fg[blue]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in"
  else
    echo "%{$fg[blue]%}%n%{$reset_color%} in"
  fi
}

function prompt_icon() {
  echo "%{$fg[red]%}$%{$reset_color%} "
}

PROMPT='$(usernamehost) $(get_pwd) $(git_prompt_info)
$(prompt_icon)'
