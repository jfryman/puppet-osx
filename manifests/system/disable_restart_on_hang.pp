# Public: Disable Restart Automatically if System Hangs
class osx::system::disable_restart_on_hang($ensure = 'present') {
  exec { 'Disable Restart Automatically if System Hangs':
    command => 'systemsetup -setrestartfreeze off',
    unless  => 'systemsetup -getrestartfreeze Off',
    user    => root,
  }
}
