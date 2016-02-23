# Public: Show all processes
class osx::activity_monitor::show_all_processes {
  boxen::osx_defaults { 'Show all processes':
    user   => $::boxen_user,
    domain => 'com.apple.ActivityMonitor',
    key    => 'ShowCategory',
    value  => 0,
  }
}
