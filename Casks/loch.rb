cask "loch" do
  version "1.2.1"
  sha256 "1089ace621f62390e01664b155c6a4e62ce4de07efe0e9c6f923da02c0e3d74d"

  url "https://github.com/divitkashyap/loch-app/releases/download/v#{version}/Loch-v#{version}-3-unsigned.zip"
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
