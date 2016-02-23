# Public: Disable Safari thumbnail cache for History and Top Sites
class osx::safari::disable_thumbnail_cache {
  boxen::osx_defaults { 'Disable Safari thumbnail cache for History and Top Sites':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'DebugSnapshotsUpdatePolicy',
    value  => 2,
  }
}
