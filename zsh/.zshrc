# zmodload zsh/zprof
export ZSH="/Users/witodelnat/.oh-my-zsh"
ZSH_THEME="avit"
HYPHEN_INSENSITIVE=true
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true
DISABLE_MAGIC_FUNCTIONS=true # Workaround for slow pasting because zsh-autosuggestions

plugins=(
  git
  gcloud
  zsh-syntax-highlighting
  zsh-autosuggestions
  yarn-autocompletions
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export AWS_PAGER=""
export GOPATH="$HOME/go"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/usr/local/opt/helm@2/bin:$PATH"
export PATH=$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
export PATH=$PATH:$GOPATH/bin
fpath=(~/.zsh/completion $fpath)

alias kdb="k9s --readonly"
alias kdbw="k9s"
alias ksta="kustomize build . | k apply -f -"
alias kstd="kustomize build . | k delete -f -"
alias helm="/usr/local/Cellar/helm/3.2.0/bin/helm"

alias c="gcloud"
alias ccl="gcloud config configurations list"
alias cca="gcloud config configurations activate"
alias cbl="cloud-build-local --config=cloudbuild.yaml --dryrun=false ."

alias t="terragrunt"
alias vim="nvim"
alias sho="scrcpy"
alias externalip="curl ipecho.net/plain ; echo"
alias keygen="ssh-keygen -o -a 100 -t ed25519 -f -C 'wito.delnat@gmail.com' -f ~/.ssh/"

PROMPT='$(_user_host)${_current_dir} %{$fg[$CARETCOLOR]%}▶%{$resetcolor%} '
RPROMPT=''

autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit -i

source ~/.iterm2_shell_integration.zsh
[ -f /usr/local/bin/fubectl.source ] && source /usr/local/bin/fubectl.source
# if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
# if [ /usr/local/bin/argocd ]; then source <(argocd completion zsh); fi
# if [ /usr/local/bin/kustomize ]; then source <(complete -o nospace -C /usr/local/bin/kustomize kustomize); fi
# complete -o nospace -C /usr/local/bin/mc mc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# timezsh() {
#   shell=${1-$SHELL}
#   for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
# }
