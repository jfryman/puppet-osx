# Public: Show the main window
class osx::activity_monitor::show_main_window {
  boxen::osx_defaults { 'Show the main window':
    user   => $::boxen_user,
    domain => 'com.apple.ActivityMonitor',
    key    => 'OpenMainWindow',
    value  => true,
  }
}
