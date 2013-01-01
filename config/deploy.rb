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

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, roles: :app, except: { no_release: true } do
    run "#{try_sudo} touch #{File.join(current_path, 'tmp','restrat.txt')}"
  end
  
  after "deploy:update_code", :link_production_db
  before "deploy:assets:precompile" do
    run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
    # run "ln -nfs #{deploy_to}/shared/config/application.yml #{release_path}/config/application.yml"
    # run "ln -nfs #{deploy_to}/shared/config/newrelic.yml #{release_path}/config/newrelic.yml"
  end
end

# De onderstaande instellingen zijn specifiek voor de Bluerail servers, u
# hoeft hier zelf geen wijzigingen in aan te brengen.
set :deploy_to, "/var/www/vhosts/lassche-lassche.nl/rails"
set :rvm_type, :system
set :rvm_bin_path, '/usr/local/rvm/bin'
set :use_sudo, false
set :keep_releases, 3

role :web, host
role :app, host
role :db,  host, :primary => true