# Public: Display emails in threaded mode, sorted by date (oldest at the top)
class osx::mail::display_threaded_mode {
  $value = {
    'DisplayInThreadedMode' => 'yes',
    'SortOrder' => 'received-date',
    'SortedDescending' => 'yes'
  }
  boxen::osx_defaults { 'Display emails in threaded mode, sorted by date (oldest at the top)':
    user   => $::boxen_user,
    domain => 'com.apple.mail',
    key    => 'DraftsViewerAttributes',
    type   => 'dict',
    value  => $value,
  }
}
