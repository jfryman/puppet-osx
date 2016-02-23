#
class osx::airdrop::all_interfaces {
  boxen::osx_defaults { 'AirDrop Allows You to "Drop" to Any Interface':
    user   => $::boxen_user,
    key    => 'BrowseAllInterfaces',
    domain => 'com.apple.NetworkBrowser',
    value  => true,
  }
}
