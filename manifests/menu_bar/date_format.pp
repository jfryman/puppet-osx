# Public: Set clock date format
class osx::menu_bar::date_format($format = 'EEE MMM d  h:mm a') {
  include osx::system

  boxen::osx_defaults { 'Set clock date format':
    user   => $::boxen_user,
    key    => 'DateFormat',
    domain => 'com.apple.MenuBarClock',
    value  => $format,
    notify => Exec['killall SystemUIServer'];
  }
}
