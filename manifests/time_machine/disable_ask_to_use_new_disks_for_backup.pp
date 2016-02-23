# Public: Disable Time Machine Asks to Use New Disks for Backup
class osx::time_machine::disable_ask_to_use_new_disks_for_backup {
  boxen::osx_defaults { 'Disable Time Machine Asks to Use New Disks for Backup':
    user   => $::boxen_user,
    key    => 'DoNotOfferNewDisksForBackup',
    domain => 'com.apple.TimeMachine',
    value  => false,
  }
}
