# Public: Enables folder on Quick Look preview windows
class osx::finder::quicklook_folder {
  include osx::finder

  boxen::osx_defaults { 'Enable Quick Look folder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'QLEnableXRayFolders',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
