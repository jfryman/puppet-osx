# Public: Setting screecapture
class osx::screencapture::base_name($base_name = 'cap') {
  boxen::osx_defaults { 'Sets the Base Filename Used for Screenshots':
    user   => $::boxen_user,
    key    => 'name',
    domain => 'com.apple.screencapture',
    value  => $base_name,
  }
}
