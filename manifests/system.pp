# Internal: Restart the system ui_server when necessary.
#
# Example
#
#   boxen::osx_defaults { 'Do a thing':
#     # ... other stuff here ...
#     notify => Exec['killall SystemUIServer'];
#   }
class osx::system {
  exec { 'killall SystemUIServer':
    refreshonly => true,
  }
}
