# Public: Disable Multiple Windows for an App are Grouped Together in Mission Control
class osx::mission_control::disable_group_by_app {
  boxen::osx_defaults { 'Disable Multiple Windows for an App are Grouped Together in Mission Control':
    user   => $::boxen_user,
    key    => 'expose-group-by-app',
    domain => 'com.apple.dock',
    value  => false,
  }
}
