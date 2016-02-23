# Public: Setting screecapture location
class osx::screencapture::location($location = '/tmp') {
  boxen::osx_defaults { 'Sets the Location of Images Taken With Screen Capture':
    user   => $::boxen_user,
    key    => 'location',
    domain => 'com.apple.screencapture',
    value  => $location,
  }
}
