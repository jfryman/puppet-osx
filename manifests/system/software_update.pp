# Public: Set Check for Software Updates Days
#
# - days: Check Interval Days for Software Updates Days
class osx::system::software_update(
  $days = 7,
) {
  boxen::osx_defaults { 'Set Check for Software Updates Days':
    user   => $::boxen_user,
    domain => 'com.apple.SoftwareUpdate',
    key    => 'ScheduleFrequency',
    value  => $days,
  }
}
