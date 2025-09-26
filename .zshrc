#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

# variables
#
#
# variables


# exports
#
export EDITOR=nvim

# go binaries
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# neovim
export PATH="$PATH:/opt/nvim-linux64/bin"

# java
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"



# exports end


# aliases
alias fuck="sudo dnf install -y"
alias unfuck="sudo dnf remove -y"
alias fzb="fzf --preview='batcat --color=always {}'"
alias goinit=~/scripts/goinit.sh
alias stngrok=~/scripts/stngrok.sh
alias runpg=~/scripts/runpg.sh
alias cd=z
alias zource="source ~/.zshrc"
alias bat=batcat
alias zshrc="nvim ~/.zshrc"
#alias task=go-task
alias lg=lazygit
alias gencv=~/scripts/cv.sh
alias genlcdir=~/scripts/genlcfolder.sh
alias and=~/scripts/addnestdeps.sh
alias appadd=~/scripts/addappimage.sh
alias prettify="go run ~/scripts/prettify.go"
alias zombies="ps ax -o pid,ppid,user,cmd,state,%cpu,%mem | awk '/ Z |PID/&&!/awk/ {print}'"
alias ls="eza --long --color=always --icons=always --no-user"
alias grep="rg --color=auto"
alias motivate="~/scripts/motivate.sh"
alias golint=golangci-lint
alias lzd='lazydocker'

# git aliases
alias gs="git status --short"
alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"
alias ga="git add"
alias gap="git add --patch"
alias gds="git diff staged"
alias gc="git commit"
alias gch="git checkout"
alias gp="git push"
alias gu="git pull"
alias gl="git log --all --graph --pretty=\
  format: '%C(magenta)%h %C(white) %an %ar%C(auto) %D%n%s%n'"
alias gb="git branch"
alias gi="git init"
alias gcl="git clone"

#aliases end

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

# Ultramarine ZSH config
# initialize starship
eval "$(starship init zsh)"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Ctrl + Arrow keybindings
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Ctrl + Backspace/Delete Kebindings
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

# ALt + Backspace/Delete Keybinds
bindkey "^[[3~" delete-char
bindkey -M emacs '^[[3;3~' kill-word

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt SHARE_HISTORY

eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/vector/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -f "/home/vector/.ghcup/env" ] && . "/home/vector/.ghcup/env" # ghcup-env

# Turso
export PATH="$PATH:/home/vector/.turso"
