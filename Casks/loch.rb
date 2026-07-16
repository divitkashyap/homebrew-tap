cask "loch" do
  version "1.3.1"
  sha256 "9518c1b0c15ce453400a765b725980bc62c8bb2a46e8113d61b830ad5c7d2b2e"

  url "https://github.com/divitkashyap/loch-app/releases/download/v#{version}/Loch-v#{version}-8-notarized.zip"
  name "Loch"
  desc "Developer's dynamic island for the MacBook notch"
  homepage "https://github.com/divitkashyap/loch-app"

  depends_on macos: :sonoma

  app "Loch.app"

  zap trash: [
    "~/Library/Application Support/Loch",
    "~/Library/Preferences/com.divitkashyap.Loch.plist",
  ]
end
