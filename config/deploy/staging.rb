set :stage, :staging

# Simple Role Syntax
# ==================
role :app, %w{rosenjon@localhost}
role :web, %w{rosenjon@localhost}
role :db,  %w{rosenjon@localhost}

set :deply_to, 'Users/rosenjon/Sites/shift-swap-app'
# Extended Server Syntax
# ======================
server '127.0.0.1', user: 'rosenjon', roles: %w{web app db}

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(~/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }

fetch(:default_env).merge!(wp_env: :staging)

