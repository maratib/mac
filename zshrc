#Hello
alias dev="yarn dev"
alias dev1="yarn dev1"
alias build="yarn build"
alias compile="npm run compile"
alias start="yarn start"
alias test="yarn test"
alias drop="yarn drop"
alias db="yarn db"
alias watch="yarn watch"
alias conf="code ~/.zshrc"
alias cls="clear"
alias learn="cd ~/iwork/learn"
alias upwork="cd ~/iwork/upwork"
alias pip="pip3.9"
alias python="python3.9"
alias k=kubectl

export PATH=$PATH:./:"~/Applications/Android Studio.app/Contents/MacOS":~/Library/Android/sdk/platform-tools 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export PATH="/usr/local/opt/libpq/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"


# Load Angular CLI autocompletion.
source <(ng completion script)
