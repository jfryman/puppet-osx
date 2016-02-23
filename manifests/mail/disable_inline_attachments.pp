# Public: Disable inline attachments (just show the icons)
class osx::mail::disable_inline_attachments {
  boxen::osx_defaults { 'Disable inline attachments (just show the icons)':
    user   => $::boxen_user,
    domain => 'com.apple.mail',
    key    => 'DisableInlineAttachmentViewing',
    value  => true,
  }
}
