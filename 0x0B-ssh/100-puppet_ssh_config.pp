# Client configuration file with Puppet.

file { '/etc/ssh/ssh_config':
  ensure => 'present',
}

exec { 'Identity'
    command => 'echo "    IdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config"'
    provider => 'shell',
}

exec { 'No password login'
    command => 'echo "    PasswordAuthentication no" >> /etc/ssh/ssh_config"'
    provider => 'shell',
}
