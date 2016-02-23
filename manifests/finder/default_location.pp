# Set the Default Location Used When Opening a New Window in Finder
class osx::finder::default_location($location = '/tmp') {

  boxen::osx_defaults { 'Set the Default Location Used When Opening a New Window in Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTarget',
    value  => 'PfHm',
    notify => Exec['killall Finder'];
  }

  boxen::osx_defaults { 'Set the Default Location Path Used When Opening a New Window in Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTargetPath',
    value  => "file://${location}/",
    notify => Exec['killall Finder'];
  }
}
