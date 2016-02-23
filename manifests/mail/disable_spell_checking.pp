# Public: Disable Automatic Spell Checking
class osx::mail::disable_spell_checking {
  boxen::osx_defaults { 'Disable Automatic Spell Checking':
    user   => $::boxen_user,
    domain => 'com.apple.mail',
    key    => 'SpellCheckingBehavior',
    value  => 'NoSpellCheckingEnabled',
  }
}
