# Public: Set Shell
#
# - shell
class osx::terminal::shell(
  $shell = '/bin/zsh',
) {
  boxen::osx_defaults { 'Set Shell':
    user   => $::boxen_user,
    domain => 'com.apple.terminal',
    key    => 'Shell',
    value  => $shell,
  }
}
