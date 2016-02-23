# Public: Disable Rich Text
class osx::text_edit::disable_rich_text {
  boxen::osx_defaults { 'Disable Rich Text':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'RichText',
    value  => 0,
  }
}
