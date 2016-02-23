# Public: Enable Unsupported Network Volumes are Displayed in Time Machine
class osx::time_machine::enable_unsupported_network_volumes {
  boxen::osx_defaults { 'Enable Unsupported Network Volumes are Displayed in Time Machine':
    user   => $::boxen_user,
    key    => 'TMShowUnsupportedNetworkVolumes',
    domain => 'com.apple.systempreferences',
    value  => true,
  }
}
