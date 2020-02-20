export ZSH="/Users/witodelnat/.oh-my-zsh"
ZSH_THEME="avit"
HYPHEN_INSENSITIVE=true
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true
DISABLE_MAGIC_FUNCTIONS=true # Workaround for slow pasting because zsh-autosuggestions

plugins=(
  git
  gcloud
  kubectl
  
  zsh-syntax-highlighting
  zsh-autosuggestions
  yarn-autocompletions
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export ANDROID_HOME=$HOME/Library/Android/sdk

export GOPATH="$HOME/go"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/usr/local/opt/helm@2/bin:$PATH"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
export PATH=$PATH:$GOPATH/bin

alias kdb="k9s"
alias kct="kubectx"
alias kns="kubens"
alias k="kubectl"
alias i="istioctl"
alias ccl="gcloud config configurations list"
alias cca="gcloud config configurations activate"
alias c="gcloud"
alias kst="kustomize"
alias ksta="kustomize build . | k apply -f -"
alias kstd="kustomize build . | k delete -f -"
alias v="nvim"
alias vv="nvim **" 
alias vim="nvim"
alias sho="scrcpy"
alias externalip="curl ipecho.net/plain ; echo"

PROMPT='$(_user_host)${_current_dir} %{$fg[$CARETCOLOR]%}▶%{$resetcolor%} '
RPROMPT=''

autoload -U +X bashcompinit && bashcompinit

source ~/.iterm2_shell_integration.zsh
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
if [ /usr/local/bin/kustomize ]; then source <(complete -o nospace -C /usr/local/bin/kustomize kustomize); fi
if [ /usr/local/bin/argocd ]; then source <(argocd completion zsh); fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

complete -o nospace -C /usr/local/bin/mc mc
