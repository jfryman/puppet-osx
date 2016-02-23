# Public: New Stack style
class osx::dock::new_stack_list {
  include osx::dock

  boxen::osx_defaults { 'New stack list':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'use-new-list-stack',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
