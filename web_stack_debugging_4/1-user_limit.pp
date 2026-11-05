# Increase file descriptor limit for holberton user

exec { 'increase-limit':
  command => 'sed -i "s/4/50000/" /etc/security/limits.conf',
  path    => '/bin:/usr/bin',
}
