# Public: Organize system preferences alphabetically
class osx::system_preferences::all_mode {
  boxen::osx_defaults { 'Organize system preferences alphabetically':
    user   => $::boxen_user,
    key    => 'ShowAllMode',
    domain => ' com.apple.systempreferences',
    value  => 1,
  }
}
