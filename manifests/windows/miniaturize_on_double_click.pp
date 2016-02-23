# Public: Double-click a window's title bar to minimize (Dock)
class osx::windows::miniaturize_on_double_click() {
  boxen::osx_defaults { 'Miniaturize Windows on Double-Click':
    user   => $::boxen_user,
    key    => 'AppleMiniaturizeOnDoubleClick',
    domain => 'NSGlobalDomain',
    value  => true,
  }
}
