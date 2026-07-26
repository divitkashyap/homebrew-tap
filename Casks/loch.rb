cask "loch" do
  version "1.4.0"
  sha256 "44b06ce46bc4f465a4246b93100b3476389ff699c09ead38c2f23fdc4f0855c0"

  url "https://github.com/divitkashyap/loch-app/releases/download/v#{version}/Loch-v#{version}-11-notarized.zip"
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
