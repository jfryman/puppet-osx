# Public: Disable smart quotes/dashes when typing code
class osx::keyboard::disable_smart {
  boxen::osx_defaults { 'Disable Smart Quotes':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSAutomaticQuoteSubstitutionEnabled',
    value  => false,
  }

  boxen::osx_defaults { 'Disable Smart Dashes':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSAutomaticDashSubstitutionEnabled',
    value  => false,
  }
}

