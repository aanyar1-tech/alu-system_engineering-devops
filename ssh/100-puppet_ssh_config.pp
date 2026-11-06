# Configure SSH client configuration file using Puppet to use a private key and disable password authentication

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?\s*IdentityFile',
  ensure => present,
}

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?\s*PasswordAuthentication',
  ensure => present,
}
