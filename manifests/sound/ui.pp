# Public: Toggle UI Sound Effects
class osx::sound::ui(
  $level  = undef,
  $ensure = 'present') {

  validate_re($ensure, '^(present|absent)$', "osx::sound::ui([ensure] must be present or absent, is ${ensure}")

  $enabled_int = $ensure ? {
    present => 1,
    default => 0
  }

  boxen::osx_defaults { 'Toggle UI Sound Effects':
    user   => $::boxen_user,
    key    => 'com.apple.sound.uiaudio.enabled',
    domain => 'com.apple.systemsound',
    type   => 'int',
    value  => $enabled_int,
  }

  if $level != undef {
    boxen::osx_defaults { 'Toggle UI Sound Effects Volume':
      user   => $::boxen_user,
      key    => 'com.apple.sound.beep.volume',
      domain => 'com.apple.systemsound',
      type   => 'float',
      value  => $level,
    }
  }
}
