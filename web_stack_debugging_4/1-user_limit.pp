# Increase file descriptor limit for holberton user

exec { 'increase-limit':
  command => 'echo "holberton - nofile 50000" >> /etc/security/limits.conf',
  path    => ['/bin', '/usr/bin'],
}
