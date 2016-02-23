# Public: Minimize windows using animation (genie: Genie effect, scale: Scale effect)
class osx::dock::mineffect($effect = 'genie') {
  include osx::dock

  boxen::osx_defaults { 'Minimize windows using animation':
    user   => $::boxen_user,
    key    => 'mineffect',
    domain => 'com.apple.dock',
    value  => $effect,
    notify => Exec['killall Dock'];
  }
}
