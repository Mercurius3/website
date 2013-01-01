require 'bundler/capistrano'
require 'rvm/capistrano'

# De naam van uw applicatie
set :application, "website"

# Gegevens van de Bluerail server
set :host, "mushu.bluerail.nl"
set :user, "lassche"

# Versiebeheer instellingen
set :scm, :git  # Of 'subversion', 'mercurial' , etc.
set :repository,  "git@github.com:Mercurius3/website.git"

# Gebruik de standaard Ruby van de server
set :rvm_ruby_string, 'default'

# Fix de error 'no such file or directory'
set :normalize_asset_timestamps, false

# De onderstaande instellingen zijn specifiek voor de Bluerail servers, u
# hoeft hier zelf geen wijzigingen in aan te brengen.
set :deploy_to, "~/rails"
set :rvm_type, :system
set :rvm_bin_path, '/usr/local/rvm/bin'
set :use_sudo, false
set :keep_releases, 3

role :web, host
role :app, host
role :db,  host, :primary => true