cask 'azure-data-studio' do
  version '1.9.0'
  sha256 '659f67ff44948fe21e5e5118a61840d24b06a93c78a379169c6b3b9fc2afeffe'

  # github.com/Microsoft/azuredatastudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/azuredatastudio/releases/download/#{version}/azuredatastudio-macos-#{version}.zip"
  appcast 'https://github.com/Microsoft/azuredatastudio/releases.atom'
  name 'Azure Data Studio'
  homepage 'https://docs.microsoft.com/en-us/sql/azure-data-studio/'

  auto_updates true

  app 'Azure Data Studio.app'
  binary "#{appdir}/Azure Data Studio.app/Contents/Resources/app/bin/code", target: 'azuredatastudio'

  zap trash: [
               '~/Library/Application Support/azuredatastudio',
               '~/Library/Preferences/com.azuredatastudio.oss.helper.plist',
               '~/Library/Preferences/com.azuredatastudio.oss.plist',
               '~/Library/Saved Application State/com.azuredatastudio.oss.savedState',
             ]
end
