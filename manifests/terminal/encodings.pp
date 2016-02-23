# Public: Set Encodings
#
# - encodings: 4 is utf-8
class osx::terminal::encodings(
  $encodings = [ 4 ],
) {
  boxen::osx_defaults { 'Set Encoding':
    user   => $::boxen_user,
    domain => 'com.apple.Terminal',
    key    => 'StringEncodings',
    type   => 'array',
    value  => $encodings,
  }
}
