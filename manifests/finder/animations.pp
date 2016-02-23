# Public: Enable Finder Animations
class osx::finder::animations {
  include osx::finder

  boxen::osx_defaults { 'Enable Finder Animations':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'DisableAllAnimations',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
