# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#history conf
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_space

#text editor of choice
export EDITOR="nvim"

#zoxide setup
eval "$(zoxide init zsh)"

# alias
alias ff='fastfetch'
alias nv='nvim'
alias x='exit'
alias msk='musikcube'
alias y='yazi'
alias ls='exa --icons --group-directories-first'
alias fzf='fzf --preview="bat --color=always {}"'
alias py='python'
alias mc='micro'
alias lg='ls | grep'
alias cd='z'
alias ytd='yt-dlp -f "bestvideo[height<=1080]+bestaudio" --merge-output-format mp4 -N 64' 
alias xcp='xclip -selection clipboard'
alias ag='[ "$(git remote -v)" ] && git add . && git commit -a -m "committed on $(date)" && git push || git add . && git commit -a -m "committed on $(date)"'
alias neofetch='fastfetch'
alias p='wl-paste | /sbin/zsh'
alias mb='sudo systemctl start docker && sudo docker start mullvad-browser'
alias clean-ram= 'sudo echo 3 | sudo tee /proc/sys/vm/drop_caches'

#powerlevel10k
source ~/.zsh_plugins/powerlevel10k/powerlevel10k.zsh-theme

#Autocomplete
#setopt interactivecomments
#source ~/.zsh_plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#Syntax Highlighting
source ~/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Autosuggestion
source ~/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
