# Public: All windows from last session
class osx::safari::always_restore {
  boxen::osx_defaults { 'All windows from last session':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'AlwaysRestoreSessionAtLaunch',
    value  => 1,
  }
}
