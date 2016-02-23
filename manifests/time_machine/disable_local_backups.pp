# Public: Disable local Time Machine snapshots
class osx::time_machine::disable_local_backups {
  $enabled_check = 'grep -LE "Kind\s+:\s+Local"'
  exec { 'Disable Local Time Machine Backups are Enabled':
    command => 'tmutil disablelocal',
    onlyif  => "hash tmutil &> /dev/null && tmutil destinationinfo | ${enabled_check}",
    user    => root,
  }
}
