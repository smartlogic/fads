require 'bundler/capistrano'
require 'rvm/capistrano'

set :rvm_ruby_string, '1.9.2-p0@fads' # Defaults to 'default'
set :rvm_type, :user

set :use_sudo, false

set :application, "fads"
set :repository,  "git@github.com:smartlogic/fads.git"

set :deploy_to, "/var/vhosts/fads"
set :deploy_via, :copy
set :scm, :git

set(:exclude_paths, ["README", "doc", "test", ".rvmrc"])
set :user, "deploy"
set :target_os, :ubuntu

task :staging do
  server "staging.slsdev.net", :app, :web, :db, :primary => true
  set :rails_env, "staging"
  after "custom:symlink", "custom:remove_config_ru"
end

namespace :deploy do
  task :start do
    run "cd #{current_path} && RAILS_ENV=#{rails_env} nohup passenger start -a 127.0.0.1 -p 3000 -d"
  end

  task :stop do
    run "cd #{current_path} && passenger stop"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    deploy.stop
    deploy.start
  end
end

namespace :custom do
  task :symlink, :roles => :app do
    # always use shared database.yml
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"

    # always use most recent apache.conf
    run "ln -nfs #{release_path}/config/apache.conf #{shared_path}/config/apache.conf"
  end

  task :remove_config_ru, :roles => :app do
    run "rm -f #{release_path}/config.ru"
  end
end

after "deploy:symlink", "custom:symlink"
