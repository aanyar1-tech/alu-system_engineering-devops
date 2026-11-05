# Puppet manifest to fix the WordPress 500 Internal Server Error
# by replacing the erroneous ".phpp" file extension with ".php" inside wp-settings.php.

exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
}
