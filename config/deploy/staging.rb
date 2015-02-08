set :stage, :staging

# Simple Role Syntax
# ==================
#role :app, %w{lala@192.168.56.10}
#role :web, %w{lala@192.168.56.10}
#role :db,  %w{lala@192.168.56.10}

set :deploy_to, '/var/www/shift-swap/'
# Extended Server Syntax
# ======================
server '192.168.56.10', user: 'lala', roles: %w{db}, port: 2222

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
  set :ssh_options, {
#    keys: %w(~/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
     port: 2222
  }

fetch(:default_env).merge!(wp_env: :staging)

