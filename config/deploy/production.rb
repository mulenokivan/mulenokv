set :rails_env, :production
set :stage, :production
server "mulenok.ru", user: "deploy", roles: %w{app db web}