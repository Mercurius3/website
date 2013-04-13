set :rails_env, "staging"
set :deploy_to,"/var/www/vhosts/lassche-lassche.nl/staging"
set :branch, 'staging'

set(:deploy_to)         { "/var/www/#{application}/live" }
set(:releases_path)     { File.join(deploy_to, version_dir) }
set(:shared_path)       { File.join(deploy_to, shared_dir) }
set(:current_path)      { File.join(deploy_to, current_dir) }
set(:release_path)      { File.join(releases_path, release_name) }