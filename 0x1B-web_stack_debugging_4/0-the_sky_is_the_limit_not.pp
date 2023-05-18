# Change file limit for nonlogin user.
exec { 'file_limit':
  command  => "sed -i 's/15/4096/2g' /etc/default/nginx",
  provider => 'shell'
}

exec { 'restart_NGINX':
  command  => 'sudo service nginx restart',
  provider => 'shell',
  require  => Exec['file_limit']
}
