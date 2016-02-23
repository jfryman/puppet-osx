# Public: Disable Open/Close Window Animations
class osx::windows::disable_animations {
  boxen::osx_defaults { 'Disable Open/Close Window Animations':
    user   => $::boxen_user,
    key    => 'NSAutomaticWindowAnimationsEnabled',
    domain => 'NSGlobalDomain',
    value  => false,
  }
}
