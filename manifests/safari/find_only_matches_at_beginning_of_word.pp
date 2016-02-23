# Public: Toggle Whether "Find On Page" Matches Only the Beginning of Words'
class osx::safari::find_only_matches_at_beginning_of_word {
  boxen::osx_defaults { 'Toggle Whether "Find On Page" Matches Only the Beginning of Words':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'FindOnPageMatchesWordStartsOnly',
    value  => true,
  }
}
