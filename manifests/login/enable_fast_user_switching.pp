# Public: Enable fast user switcing
#
# - menu: full name, account name, icon
class osx::login::enable_fast_user_switching($menu = 'icon') {
  include osx::system

  boxen::osx_defaults { 'Allow Fast User Switching':
    user   => root,
    key    => 'MultipleSessionEnabled',
    domain => '/Library/Preferences/.GlobalPreferences',
    value  => true,
    notify => Exec['killall SystemUIServer'],
  }

  case $menu {
    'full name':    { $menu_int = 0 }
    'account name': { $menu_int = 1 }
    'icon':         { $menu_int = 2 }
    default:        { $menu_int = 0 }
  }
  boxen::osx_defaults { 'Show fast user switching meuu as':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'userMenuExtraStyle',
    value  => $menu_int,
  }
}
