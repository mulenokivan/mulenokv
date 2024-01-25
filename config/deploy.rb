lock "~> 3.18.0"
set :application, "mulenokv"
set :repo_url, "git@github.com:mulenokivan/mulenokv.git"
set :branch, "main"
set :default_shell, "/bin/bash -l"
set :deploy_to, "/home/deploy/#{fetch :application}"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
set :keep_releases, 5