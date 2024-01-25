require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/bundler"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
require "capistrano/rvm"
require "capistrano/passenger"
require "capistrano/rails"


# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
set :rvm_type, :user                # Defaults to: :auto
set :rvm_ruby_version, '3.3.0'      # Defaults to: 'default'