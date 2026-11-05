# This puppet manifest fixes the WordPress 500 internal server error by replacing .phpp with .php in wp-settings.php

exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
}
