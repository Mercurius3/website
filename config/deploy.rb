set :stages, %w(staging production)
set :default_stage, "staging"

# require 'bundler/capistrano'
# require 'rvm/capistrano'
require 'capistrano/ext/multistage'

# De naam van uw applicatie

set :application, "website"
# set(:rails_env) { fetch(:stage) }
set(:deploy_to)         { "/var/www/vhosts/lassche-lassche.nl/#{rails_env}" }
set(:releases_path)     { File.join(deploy_to, version_dir) }
set(:shared_path)       { File.join(deploy_to, shared_dir) }
set(:current_path)      { File.join(deploy_to, current_dir) }
set(:release_path)      { File.join(releases_path, release_name) }

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
    run "#{try_sudo} touch #{File.join(current_path, 'tmp','restart.txt')}"
  end
  puts "Deploying to: #{deploy_to}, current_path: #{current_path}, rails_env: #{rails_env}"
  before "deploy:assets:precompile", :create_symlinks
  # after "deploy:create_symlink", :update_database_yml
  after "deploy", "deploy:cleanup"

  task :seed do
    #TODO check if rails_env works correctly
    run "cd #{deploy_to}/current && bundle exec rake db:seed RAILS_ENV=#{rails_env} && touch tmp/restart.txt"
  end

end

# Create symbolic links to shared files on server containing sensitive information like passwords
task :create_symlinks do
  run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
  run "ln -nfs #{deploy_to}/shared/config/initializers/secret_token.rb #{release_path}/config/initializers/secret_token.rb"
  run "ln -nfs #{deploy_to}/shared/config/application.yml #{release_path}/config/application.yml"
  # run "ln -nfs #{deploy_to}/shared/config/newrelic.yml #{release_path}/config/newrelic.yml"
end


# De onderstaande instellingen zijn specifiek voor de Bluerail servers, u
# hoeft hier zelf geen wijzigingen in aan te brengen.
# set :deploy_to, "/var/www/vhosts/lassche-lassche.nl/staging"
set :rvm_type, :system
set :rvm_bin_path, '/usr/local/rvm/bin'
set :use_sudo, false
set :keep_releases, 1

role :web, host
role :app, host
role :db,  host, :primary => true