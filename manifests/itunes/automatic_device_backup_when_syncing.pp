# Public: Toggle Whether iTunes Automatically Backs Up Device on Sync
class osx::itunes::automatic_device_backup_when_syncing($ensure = 'present') {

  validate_re($ensure, '^(present|absent)$', "osx::itunes::automatic_device_backup_when_syncing([ensure] must be present or absent, is ${ensure}")

  $enabled = $ensure ? {
    present => true,
    default => false
  }

  boxen::osx_defaults { 'Toggle Whether iTunes Automatically Backs Up Device on Sync':
    user   => $::boxen_user,
    key    => 'AutomaticDeviceBackupsDisabled',
    domain => 'com.apple.iTunes',
    value  => !$enabled,
  }
}
