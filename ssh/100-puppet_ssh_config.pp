# configuration of file so that you can connect to a server without typing a password
include stdlib

file_line { 'no_type_password':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'p_file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PFile ~/.ssh/school',
  replace => true,
}
