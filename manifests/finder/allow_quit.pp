# Public: Enable the Ability to Quit Finder
class osx::finder::allow_quit {
  include osx::finder

  boxen::osx_defaults { 'Enable the Ability to Quit Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'QuitMenuItem',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
