# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# env
ZSH_THEME="powerlevel10k/powerlevel10k"
export PATH=$HOME/bin:/opt/android-sdk/platform-tools:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/opt/openjdk/bin/:$PATH
export JAVA_HOME=/opt/homebrew/opt/openjdk/bin/
export ZSH="/Users/fsilva/.oh-my-zsh"
export VIRSH_DEFAULT_CONNECT_URI="qemu:///system"
export LIBVIRT_DEFAULT_URI="qemu:///system"
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
export VISUAL="nano"
export WORKSPACE="$HOME/dev"
export GPG_TTY=$(tty)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# Shortcuts
alias ssh-keys="ssh-add ~/.ssh/*"
alias zshrc="nano ~/.zshrc"
alias ae="deactivate &> /dev/null; source ./venv/bin/activate"
alias edit="$EDITOR $CONFIG_SRC"
alias gb="git branch -v"
alias gbm="git checkout master"
alias gcm="git commit -Ssi"
alias gr="git remote -v"
alias grip='grep -oE "([0-9]{1,3}[.]){3}[0-9]{1,3}"'
alias gs="git status"
alias gst="git status"
alias ipv4="dig @resolver4.opendns.com myip.opendns.com +short -4"
alias ipv6="dig @resolver1.ipv6-sandbox.opendns.com AAAA myip.opendns.com +short -6"
alias lidclosed="ioreg -r -k AppleClamshellState -d 4 | grep AppleClamshellState | awk '{ print $4 }'"
alias venv="python3 -m venv venv && ae"
alias vi="$EDITOR"
alias view="less $CONFIG_FILE"
alias vim="$EDITOR"
alias ws="cd $WORKSPACE"

# Helpful functions
function lazygit() { git add . ;git commit -a -m "$1"; git push}
function whomport() { lsof -nP -i4TCP:$1 | grep LISTEN }
function funcs() { functions | grep "()" | grep -v '"'}

# Plugins
plugins=( git zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh

# User configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh