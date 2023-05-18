# Change file limit for nonlogin user.
exec { 'file_limit':
  command  => "sed -i 's/ULIMIT=\"-n \d+\"/ULIMIT=\"-n 15000\"/' /etc/default/nginx",
  provider => 'shell'
}
