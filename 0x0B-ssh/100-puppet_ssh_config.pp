# Edits the SSH configuration file
$str = "Host *
     IdentityFile ~/.ssh/school
     IdentitiesOnly yes
     "

file { 'config':
  ensure  => present,
  path    => '~/.ssh/',
  content => $str
}
