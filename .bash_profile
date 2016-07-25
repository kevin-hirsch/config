# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Tools
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

## Shortcuts
alias l='ls -l'
alias ll='ls -al'
alias pubip='wget http://ipinfo.io/ip -qO -'

## Bash profile
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile'

## Git
alias status='git status'
alias commit='git commit -m'
alias pull='git pull'
alias push='git push -u origin'
alias gitreset='git reset --soft HEAD~1'

## CocoaPods
alias podi='pod install'
alias podu='pod update'

## Directories
alias home='cd ~/'
alias xcode='cd ~/Documents/Xcode/'
alias eas='cd ~/Documents/Xcode/Assisto/'
alias kvn='cd ~/Documents/Xcode/KVNProgress/'

## Fastlane
alias fl="fastlane"
alias fla="fastlane action"
alias flas="fastlane actions"

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

cd /Users/kevin/Documents/Xcode/
clear
