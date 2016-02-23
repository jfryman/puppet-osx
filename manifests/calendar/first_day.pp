# Public: Set the first day of week
#
# - day: 0 sunday
class osx::calendar::first_day(
  $day = 0,
) {
  boxen::osx_defaults { 'Set the first day of week':
    user   => $::boxen_user,
    domain => 'com.apple.iCal',
    key    => 'first day of week',
    value  => $day,
  }
}
