require 'bundler/capistrano'

set :default_environment, {
  "GEM_HOME" => "/home3/englisj6/ruby/gems"
}

# set :shell, "/bin/bash"

set :application, "bulldogs"

set :scm, :none
set :repository,  "."
set :deploy_via, :copy

set :domain, "englishbulldogpuppiesusa.com"
set :password, "Sawmill2000!"
set :user, "englisj6"

set :deploy_to, "/home3/#{user}/#{application}/"
set :use_sudo, false
# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                         # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end