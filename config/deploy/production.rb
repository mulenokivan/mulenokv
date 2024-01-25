set :rails_env, "production"
server "mulenok.ru", user: "deploy", roles: %w{app db web}