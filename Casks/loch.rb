cask "loch" do
  version "1.2.0"
  sha256 "be7d6700b3a6b1b28c1d84cecbfe821980149228891fd15e083eaa4d5d434252"

  url "https://github.com/divitkashyap/loch-app/releases/download/v#{version}/Loch-v#{version}-2-unsigned.zip"
  name "Loch"
  desc "Developer's dynamic island for the MacBook notch"
  homepage "https://github.com/divitkashyap/loch-app"

  depends_on macos: :sonoma

  app "Loch.app"

  caveats <<~EOS
    Loch is currently distributed unsigned (free app, no Apple Developer fee yet).
    If macOS blocks the first launch, clear the quarantine flag once:

      xattr -d com.apple.quarantine "#{appdir}/Loch.app"
  EOS

  zap trash: [
    "~/Library/Preferences/com.divitkashyap.Loch.plist",
    "~/Library/Application Support/Loch",
  ]
end
