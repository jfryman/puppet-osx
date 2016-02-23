# Public: Disable Automatic Actions
class osx::cd_dvd::disable_automatic_actions {
  boxen::osx_defaults { 'Disable Automatic Action - blank CD':
    user   => $::boxen_user,
    domain => 'com.apple.digihub',
    key    => 'com.apple.digihub.blank.cd.appeared',
    type   => 'dict',
    value  => { 'action' => 1 },
  }

  boxen::osx_defaults { 'Disable Automatic Action - music CD':
    user   => $::boxen_user,
    domain => 'com.apple.digihub',
    key    => 'com.apple.digihub.cd.music.appeared',
    type   => 'dict',
    value  => { 'action' => 1 },
  }

  boxen::osx_defaults { 'Disable Automatic Action - picture CD':
    user   => $::boxen_user,
    domain => 'com.apple.digihub',
    key    => 'com.apple.digihub.cd.picture.appeared',
    type   => 'dict',
    value  => { 'action' => 1 },
  }

  boxen::osx_defaults { 'Disable Automatic Action - blank DVD':
    user   => $::boxen_user,
    domain => 'com.apple.digihub',
    key    => 'com.apple.digihub.blank.dvd.appeared',
    type   => 'dict',
    value  => { 'action' => 1 },
  }

  boxen::osx_defaults { 'Disable Automatic Action - video CD':
    user   => $::boxen_user,
    domain => 'com.apple.digihub',
    key    => 'com.apple.digihub.dvd.video.appeared',
    type   => 'dict',
    value  => { 'action' => 1 },
  }
}
