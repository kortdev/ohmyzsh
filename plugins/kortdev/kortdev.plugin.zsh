# ------------------------------------------------------------------------------
#          FILE:  kortdev.plugin.zsh
#   DESCRIPTION:  oh-my-zsh kortdev plugin file.
#        AUTHOR:  Daniel Gomes (me@danielcsgomes.com)
#       VERSION:  1.0.0
# ------------------------------------------------------------------------------

# kortdev basic command completion
_kortdev_get_command_list () {
    cd --raw --no-ansi list | sed "s/[[:space:]].*//g"
}

_kortdev () {
  if [ -f artisan ]; then
    compadd `_kortdev_get_command_list`
  fi
}

compdef _kortdev kortdev
compdef _kortdev kort

# Programs
alias vs=code

# Aliases
alias sites='cd ~/Sites'
alias marshmallow='cd ~/Sites/Marshmallow'
alias kort='cd ~/Sites/kort.dev'
alias projects='cd ~/Sites/projects'
alias ippies='cd ~/Sites/ippies/sites'

# Aliases short
alias mm='cd ~/Sites/Marshmallow'
alias kd='cd ~/Sites/kort.dev'
alias ipp='cd ~/Sites/ippies/sites'

# Projects
alias futalyze='cd ~/Sites/projects/Futalyze/futalyze'
alias demo='cd ~/Sites/projects/test'
alias offershop='cd ~/Sites/Marshmallow/offershop'

alias vs:futalyze='code ~/Sites/projects/Futalyze/futalyze'
alias vs:demo='code ~/Sites/projects/test'
alias vs:offershop='code ~/Sites/Marshmallow/offershop'
alias vs:ippies='code ~/Sites/ippies/sites'

alias create:db='mysql -u root -p"secret" -e  "create database s ";'


# alias tinker="~/.extra/tinkerwell.py"
# alias novadebug=". ~/.extra/debug-nova.sh"

# alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="subl ~/.oh-my-zsh"

# alias opti="php artisan optimize:clear"
# alias valet-init="valet link && valet secure"
# alias super-res="supervisorctl restart all && a queue:restart"


