cask "bowzer" do
  version "1.3.0"
  sha256 "5ae659b70b724f9d7e97657b0f564039e5a367094a997ccb3400c514add7258c"

  url "https://github.com/lailo/bowzer/releases/download/v#{version}/Bowzer-#{version}.zip"
  name "Bowzer"
  desc "Lightweight browser picker that lets you choose where to open links"
  homepage "https://github.com/lailo/bowzer"

  depends_on macos: :sonoma

  app "Bowzer.app"

  # Bowzer releases are not codesigned or notarized, so macOS Gatekeeper
  # quarantines the app on first launch. Strip the quarantine attribute
  # after install so users don't see a "damaged / can't be opened" dialog.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Bowzer.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Bowzer",
    "~/Library/Caches/Bowzer",
    "~/Library/Preferences/com.bowzer.app.plist",
    "~/Library/Saved Application State/com.bowzer.app.savedState",
  ]
end
