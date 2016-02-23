# Public: Show the Full POSIX Path in the Finder Titlebar
class osx::finder::posix_title_path {
  boxen::osx_defaults { 'Show the Full POSIX Path in the Finder Titlebar':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => '_FXShowPosixPathInTitle',
    value  => true,
  }
}
