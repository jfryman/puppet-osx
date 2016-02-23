# Public: Show the Finder Path Bar
class osx::finder::path_bar {
  include osx::finder

  boxen::osx_defaults { 'Show the Finder Path Bar':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'ShowPathbar',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
