# Public: Disable the sound effects on boot
class osx::sound::disable_boot {
  $value = '\%00'
  exec { 'Disable the sound effects on boot NVRAM Variable':
    command => "nvram SystemAudioVolume=${value}",
    unless  => "nvram SystemAudioVolume | awk -F'\t' '{ print \$2 }' | grep '^${value}$'",
    user    => root,
  }
}
