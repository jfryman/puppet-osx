# Public: Enable the Print Dialog Should Disappear When All Jobs Are Complete
class osx::printing::quit_when_finished($ensure = 'present') {
  boxen::osx_defaults { 'Enable the Print Dialog Should Disappear When All Jobs Are Complete':
    user   => $::boxen_user,
    key    => '"Quit When Finished"',
    domain => 'com.apple.print.PrintingPrefs',
    value  => true ,
  }
}
