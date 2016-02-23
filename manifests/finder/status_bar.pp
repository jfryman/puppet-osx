# Public: Show the Finder Status Bar
class osx::finder::status_bar {
  include osx::finder

  boxen::osx_defaults { 'Show the Finder Status Bar':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'ShowStatusBar',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
