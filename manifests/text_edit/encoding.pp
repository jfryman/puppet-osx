# Public: Set Encoding
class osx::text_edit::encoding(
  $encoding = 'utf8',
) {
  $encoding_ = $encoding ? {
    'utf8'  => 4,
    defualt => 4,
  }

  boxen::osx_defaults { 'Set Encoding for Default':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'PlainTextEncoding',
    type   => 'int',
    value  => $encoding_,
  }

  boxen::osx_defaults { 'Set Encoding for Default Write':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'PlainTextEncodingForWrite',
    type   => 'int',
    value  => $encoding_,
  }
}
