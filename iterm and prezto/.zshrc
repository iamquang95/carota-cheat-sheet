#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Carota <quanglh1508@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# start fasd
eval "$(fasd --init auto)"

# up/down search
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search

if [[ -n "$key_info" ]]; then
  # Emacs
  bindkey -M emacs "$key_info[Control]P" up-line-or-beginning-search
  bindkey -M emacs "$key_info[Control]N" down-line-or-beginning-search

  # Vi
  bindkey -M vicmd "k" up-line-or-beginning-search
  bindkey -M vicmd "j" down-line-or-beginning-search

  # Emacs and Vi
  for keymap in 'emacs' 'viins'; do
    bindkey -M "$keymap" "$key_info[Up]" up-line-or-beginning-search
    bindkey -M "$keymap" "$key_info[Down]" down-line-or-beginning-search
  done
fi

# `v` with no arguments opens the current directory in Vim, otherwise opens the
# given location
function v() {
	if [ $# -eq 0 ]; then
		vim .;
	else
		vim "$@";
	fi;
}

# `o` with no arguments opens the current directory, otherwise opens the given
# location
function o() {
	if [ $# -eq 0 ]; then
		open .;
	else
		open "$@";
	fi;
}