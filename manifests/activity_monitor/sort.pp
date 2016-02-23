# Public: Sort Activity Monitor Results
#
# - column: sort column
class osx::activity_monitor::sort(
  $column = 'CPUUsage',
) {
  boxen::osx_defaults { 'Set Sort Column':
    user   => $::boxen_user,
    domain => 'com.apple.ActivityMonitor',
    key    => 'SortColumn',
    value  => $column,
  }

  boxen::osx_defaults { 'Set Sort Direction':
    user   => $::boxen_user,
    domain => 'com.apple.ActivityMonitor',
    key    => 'SortDirection',
    value  => 0,
  }
}
