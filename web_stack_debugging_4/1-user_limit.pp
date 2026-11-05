# Increase file descriptor limit for holberton user

exec { 'increase-limit':
  command => 'echo "holberton hard nofile 50000" >> /etc/security/limits.conf && echo "holberton soft nofile 50000" >> /etc/security/limits.conf',
  path    => '/bin:/usr/bin',
}
