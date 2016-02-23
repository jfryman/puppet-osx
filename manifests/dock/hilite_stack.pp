# Public: Hilite stack show
class osx::dock::hilite_stack {
  include osx::dock

  boxen::osx_defaults { 'Hilite stack show':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'mouse-over-hilite-stack',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
