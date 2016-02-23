# Public: Toggle Whether iPods and iPhones Sync Automatically When Connected
class osx::itunes::automatic_sync($ensure = 'present') {

  validate_re($ensure, '^(present|absent)$', "osx::itunes::automatic_sync([ensure] must be present or absent, is ${ensure}")

  $enabled = $ensure ? {
    present => true,
    default => false
  }

  boxen::osx_defaults { 'Toggle Whether iPods and iPhones Sync Automatically When Connected':
    user   => $::boxen_user,
    key    => 'dontAutomaticallySyncIPods',
    domain => 'com.apple.iTunes',
    value  => !$enabled,
  }
}
