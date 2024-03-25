# 1-user_limit.pp

# Set ulimit for the holberton user
class ulimit_holberton {
  user { 'holberton':
    ensure => present,
    ulimit => 'nofile=65535',
  }
}

# Apply the ulimit_holberton class
class { 'ulimit_holberton': }
