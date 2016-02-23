# Public: Hidden automatically hide and show the menu bar
class osx::finder::hidden_menu_bar($hidden = true) {
  include osx::finder

  boxen::osx_defaults { 'automatically hide and show the menu bar':
    domain => 'NSGlobalDomain',
    key    => '_HIHideMenuBar',
    type   => 'bool',
    value  => $hidden,
    user   => $::boxen_user,
    notify => Exec['killall Finder'];
  }
}
