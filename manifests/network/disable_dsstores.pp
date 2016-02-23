# Public: Disable the Creation of .DS_Store Files on Network Volumes
class osx::network::disable_dsstores {
  boxen::osx_defaults { 'Disable the Creation of .DS_Store Files on Network Volumes':
    user   => $::boxen_user,
    domain => 'com.apple.desktopservices',
    key    => 'DSDontWriteNetworkStores',
    value  => true;
  }
}
