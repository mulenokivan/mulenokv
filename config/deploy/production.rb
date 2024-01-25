set :rvm_type, :user                # Defaults to: :auto
set :rvm_ruby_version, '3.3.0'      # Defaults to: 'default'
server "mulenok.ru", user: "deploy", roles: %w{app db web}, my_property: :my_value