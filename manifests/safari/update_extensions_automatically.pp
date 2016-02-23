# Public: Update Extensions Automatically
class osx::safari::update_extensions_automatically {
  boxen::osx_defaults { 'Update Extensions Automatically':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'InstallExtensionUpdatesAutomatically',
    value  => true,
  }
}
