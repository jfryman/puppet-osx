# Public Toggle the Warning when Emptying the Trash
class osx::trash::when_emptying(
  $warn   = undef,
  $secure = undef) {

  include osx::finder

  if $warn != undef {
    boxen::osx_defaults { 'Toggle the Warning when Emptying the Trash':
      user   => $::boxen_user,
      domain => 'com.apple.finder',
      key    => 'WarnOnEmptyTrash',
      value  => $warn,
      notify => Exec['killall Finder'],
    }
  }

  if $secure != undef {
    boxen::osx_defaults { 'Toggle Whether Emptying the Trash is Done Securely':
      user   => $::boxen_user,
      key    => 'EmptyTrashSecurely',
      domain => 'com.apple.finder',
      value  => $secure,
      notify => Exec['killall Finder'],
    }
  }
}
