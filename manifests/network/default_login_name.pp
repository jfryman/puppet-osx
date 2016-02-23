# Public: Remove/Set Custom Default Name Setting
class osx::network::default_login_name(
  $default_name = undef) {
  if $default_name == false {
    boxen::osx_defaults { 'Removes Custom Default Name Setting - Part 1':
      ensure => absent,
      user   => $::boxen_user,
      key    => 'UseDefaultName',
      domain => 'com.apple.NetworkAuthorization',
    }

    boxen::osx_defaults { 'Removes Custom Default Name Setting - Part 2':
      ensure => absent,
      user   => $::boxen_user,
      key    => 'DefaultName',
      domain => 'com.apple.NetworkAuthorization',
    }
  }
  else {
    boxen::osx_defaults { 'Set Custom Default Name Setting - Part 1':
      user   => $::boxen_user,
      key    => 'UseDefaultName',
      domain => 'com.apple.NetworkAuthorization',
      value  => true,
    }

    boxen::osx_defaults { 'Set Custom Default Name Setting - Part 2':
      user   => $::boxen_user,
      key    => 'DefaultName',
      domain => 'com.apple.NetworkAuthorization',
      value  => $default_name,
    }
  }
}
