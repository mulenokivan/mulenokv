set :application, "mulenokv"
set :repo_url, "git@github.com:mulenokivan/mulenokv.git"
set :branch, "main"
set :deploy_to, "/home/deploy/#{fetch :application}"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
append :linked_files,  'config/credentials/production.key'
set :keep_releases, 3