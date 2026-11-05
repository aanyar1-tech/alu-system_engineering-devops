# This puppet manifest increases the ulimit for Nginx to handle high traffic and prevent failed requests

exec { 'fix--for-nginx':
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/g" /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
