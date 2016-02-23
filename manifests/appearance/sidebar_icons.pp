# Public: Set the Size of the Icons in the Sidebar
class osx::appearance::sidebar_icons(
  $size = undef) {

  case $size {
    'small':  { $size_int = 1 }
    'medium': { $size_int = 2 }
    default:  { $size_int = 3 }
  }

  boxen::osx_defaults { 'Set the Size of the Icons in the Sidebar':
    user   => $::boxen_user,
    key    => 'NSTableViewDefaultSizeMode',
    domain => 'NSGlobalDomain',
    value  => $size_int,
  }
}
