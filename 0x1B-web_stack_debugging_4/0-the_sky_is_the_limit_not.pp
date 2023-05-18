# Change file limit for nonlogin user.
exec { 'file_limit':
  command  => "sed -i 's/15/4096/' /etc/default/nginx",
  provider => 'shell'
}
