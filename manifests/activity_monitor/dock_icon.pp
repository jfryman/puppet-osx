# Public: Visualize usage in the Activity Monitor Dock icon
#
# - type: 4 CPU
class osx::activity_monitor::dock_icon(
  $type = 'cpu',
) {
  $type_ = $type ? {
    'cpu'   => 5,
    default => 5,
  }

  boxen::osx_defaults { 'Visualize usage in the Activity Monitor Dock icon':
    user   => $::boxen_user,
    domain => 'com.apple.ActivityMonitor',
    key    => 'IconType',
    value  => $type_,
  }
}
