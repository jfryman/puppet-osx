# Public: Show Event Times
class osx::calendar::show_event_times {
  boxen::osx_defaults { 'Show Event Times':
    user   => $::boxen_user,
    domain => 'com.apple.iCal',
    key    => 'Show time in Month View',
    value  => true,
  }
}
