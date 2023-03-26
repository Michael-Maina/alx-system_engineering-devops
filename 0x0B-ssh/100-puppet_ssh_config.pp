# Edits the SSH configuration file
$str = "Host *
     IdentityFile ~/.ssh/school
     IdentitiesOnly yes
     "

file { '/home/.ssh/config':
  ensure  => present,
  path    => '/home/.ssh/',
  content => $str
}
