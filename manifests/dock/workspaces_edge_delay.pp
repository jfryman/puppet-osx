# Public: Workspaces Edge Delay
#
# - delay: Delay Seconds
class osx::dock::workspaces_edge_delay(
  $delay = 2.0,
) {
  include osx::dock

  boxen::osx_defaults { 'Workspaces Edge Delay':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'workspaces-edge-delay',
    value  => $delay,
    type   => 'float',
    notify => Exec['killall Dock'];
  }
}
