# Public: Hide Safari sidebar in Top Sites
class osx::safari::hide_top_sites {
  boxen::osx_defaults { 'Hide Safari sidebar in Top Sites':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'ShowSidebarInTopSites',
    value  => false,
  }
}
