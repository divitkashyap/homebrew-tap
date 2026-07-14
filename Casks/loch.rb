cask "loch" do
  version "1.3.0"
  sha256 "8a00c94e8d33b0e390477cdbddd89a0a9e7770d0e0dfcfad32bac9945308c419"

  url "https://github.com/divitkashyap/loch-app/releases/download/v#{version}/Loch-v#{version}-6-notarized.zip"
  name "Loch"
  desc "Developer's dynamic island for the MacBook notch"
  homepage "https://github.com/divitkashyap/loch-app"

  depends_on macos: :sonoma

  app "Loch.app"

  zap trash: [
    "~/Library/Preferences/com.divitkashyap.Loch.plist",
    "~/Library/Application Support/Loch",
  ]
end
