# Public: Do Not Track
class osx::safari::do_not_track {
  boxen::osx_defaults { 'Do Not Track':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'SendDoNotTrackHTTPHeader',
    value  => true,
  }
}

