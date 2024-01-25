set :application, "mulenokv"
set :repo_url, "git@github.com:mulenokivan/mulenokv.git"
set :branch, "main"
set :deploy_to, "/home/deploy/#{fetch :application}"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
set :linked_files, %w[config/database.yml config/master.key]
append :linked_files,  'config/credentials/production.key'
set :keep_releases, 3

before 'deploy:starting', 'config_files:upload'