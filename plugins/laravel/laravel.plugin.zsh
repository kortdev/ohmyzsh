#!zsh
# Laravel basic command completion
_laravel_get_command_list () {
	php artisan --raw --no-ansi list | sed "s/[[:space:]].*//g"
}

_laravel () {
  if [ -f artisan ]; then
    compadd `_laravel_get_command_list`
  fi
}

compdef _laravel artisan
compdef _laravel la

#Default
alias artisan='php artisan'
alias a='php artisan'

# Development
alias pas='php artisan serve'
#alias pat ='php artisan tinker'
alias pads='php artisan db:seed'

#Cache
alias paca='php artisan cache'
alias pacaf='php artisan cache:forget'
alias pacat='php artisan cache:table'

# Database
alias pami='php artisan migrate'
alias pamif='php artisan migrate:fresh'
alias pamifs='php artisan migrate:fresh --seed'
alias pamir='php artisan migrate:rollback'

alias pamii='php artisan migrate:install'
alias pamirf='php artisan migrate:refresh'
alias pamirs='php artisan migrate:reset'
alias pamist='php artisan migrate:status'

# Makers
alias pam='php artisan make:'
alias pamm='php artisan make:model'
alias pamc='php artisan make:controller'
alias pams='php artisan make:seeder'
alias pamt='php artisan make:test'
alias pamfa='php artisan make:factory'
alias pamp='php artisan make:policy'
alias pame='php artisan make:event'
alias pamj='php artisan make:job'
alias paml='php artisan make:listener'
alias pamn='php artisan make:notification'
alias pampp='php artisan make:provider'
alias pammid='php artisan make:middleware'
alias pammig='php artisan make:migration'
alias pamru='php artisan make:rule'

# Clears
alias pacac='php artisan cache:clear'
alias pacoc='php artisan config:clear'
alias pavic='php artisan view:clear'
alias paroc='php artisan route:clear'

# queues
alias paqf='php artisan queue:failed'
alias paqft='php artisan queue:failed-table'
alias paql='php artisan queue:listen'
alias paqr='php artisan queue:retry'
alias paqt='php artisan queue:table'
alias paqw='php artisan queue:work'

#Vendor
alias pavp='php artisan vendor:publish' 