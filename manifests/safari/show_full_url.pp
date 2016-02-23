# Public: Show full website address
class osx::safari::show_full_url {
  boxen::osx_defaults { 'Show full website adress':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'ShowFullURLInSmartSearchField',
    value  => 1,
  }
}

