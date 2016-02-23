# Public: Toggle Whether to Save New Documents to iCloud by Default
class osx::system::disable_save_documents_to_icloud_by_default {
  boxen::osx_defaults { 'Toggle Whether to Save New Documents to iCloud by Default':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDocumentSaveNewDocumentsToCloud',
    value  => false,
  }
}
