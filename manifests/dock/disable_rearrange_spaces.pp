# Public: Dont automatically rearrange Spaces based on most recent use
class osx::dock::disable_rearrange_spaces {
  include osx::dock

  boxen::osx_defaults { 'Dont automatically rearrange Spaces based on most recent use':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'mru-spaces',
    value  => false,
    notify => Exec['killall Dock'];
  }
}
