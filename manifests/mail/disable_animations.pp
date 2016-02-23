# Public: Disable Animations in Mail.app
class osx::mail::disable_animations {
  boxen::osx_defaults { 'Disable Replu Animations in Mail.app':
    user   => $::boxen_user,
    domain => 'com.apple.mail',
    key    => 'DisableReplyAnimations',
    value  => true,
  }

  boxen::osx_defaults { 'Disable Send Animations in Mail.app':
    user   => $::boxen_user,
    domain => 'com.apple.mail',
    key    => 'DisableSendAnimations',
    value  => true,
  }
}
