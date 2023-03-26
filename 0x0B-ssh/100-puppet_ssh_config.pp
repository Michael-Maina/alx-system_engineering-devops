# Edits the SSH configuration file
$str = "Host *
     IdentityFile ~/.ssh/school
     IdentitiesOnly yes
     "

file { '/home/root/.ssh/config':
  ensure  => present,
  path    => '/home/root/.ssh/',
  content => $str
}
