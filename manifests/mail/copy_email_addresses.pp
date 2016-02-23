# Public: Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
class osx::mail::copy_email_addresses {
  boxen::osx_defaults { 'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app':
    user   => $::boxen_user,
    domain => 'com.apple.mail',
    key    => 'AddressesIncludeNameOnPasteboard',
    value  => false,
  }
}
