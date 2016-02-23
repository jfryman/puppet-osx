# Public: Hide date and time in the Menu Bar
class osx::menu_bar::hide_date_time {
  include osx::system

  boxen::osx_defaults { 'Hide date and time in the Menu Bar':
    user   => $::boxen_user,
    key    => 'ClockEnabled',
    domain => 'com.apple.MenuBarClock',
    value  => false,
    notify => Exec['killall SystemUIServer'];
  }
}
