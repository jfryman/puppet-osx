# Public: Set encoding UTF-8
class osx::safari::encoding_utf8 {
  boxen::osx_defaults { 'Encoding UTF-8':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DefaultTextEncodingName',
    value  => 'utf-8',
  }
}
