# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=${PATH}:~/Library/Android/sdk/tools
export PATH=${PATH}:~/Library/Android/sdk/platform-tools
export EDITOR='subl -w'

txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

alias  l='ls -a'
alias ll='ls -al'
alias  b='cd ..'
alias  s='subl .'
alias  c='clear'
alias pss='python -m SimpleHTTPServer 8000'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias lamp="curl -L -o 'install.sh' http://bit.ly/1hBfq57 && curl -L -o 'Vagrantfile' http://bit.ly/1mE3Qt9 && vagrant up"

# Swapping from PHP 5.4 to PHP 5.5
# export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"
#export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"