# Public: Prevent Safari from opening safe files automatically after downloading
class osx::safari::disable_auto_open_safe {
  boxen::osx_defaults { 'Prevent Safari from opening safe files automatically after downloading':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'AutoOpenSafeDownloads',
    value  => false,
  }
}
