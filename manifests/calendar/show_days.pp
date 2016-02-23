# Public: Show n days
class osx::calendar::show_days(
  $days = 7,
) {
  boxen::osx_defaults { 'Show Days':
    user   => $::boxen_user,
    domain => 'com.apple.iCal',
    key    => 'n days of week',
    value  => $days,
  }
}
