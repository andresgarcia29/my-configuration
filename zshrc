#Aliases
alias py=python

#OhMyZsh
export ZSH="/Users/andresgarcia/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

#Themes
ZSH_THEME="spaceship"

#Plugins
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  jsontools
  node
  pip
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  colorize
  common-aliases
  copyfile
)

#Configuration for VirtualEnvWrapper
WORKON_HOME=~/envs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh


#User configuration
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Functions 
run () {
  DOCKERFILES="/Users/andresgarcia/Code/Docker"
  case $1 in
    postgres)
      case $2 in
        start)
        echo "Running Postgres on Docker"
        docker-compose -f "${DOCKERFILES}/docker-file.postgres.yml" up -d
        ;;
        stop)
        echo "Running Postgres on Docker"
        docker-compose -f "${DOCKERFILES}/docker-file.postgres.yml" stop
        ;;
        esac
      ;;
    lavalink)
      echo "Running Lavalink on Docker"
      ;;
    *)
      echo "Not Valid Option"
      ;;
  esac
}

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#Homebrew
export PATH="/opt/homebrew/bin:$PATH"

