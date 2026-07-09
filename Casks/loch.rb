cask "loch" do
  version "1.2.0"
  sha256 "e3258492a6e9f652cdde7c3e9072a2f3cc5d4b934d769c45a0b489675a43f990"

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
