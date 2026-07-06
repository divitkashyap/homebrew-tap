cask "swampshi" do
  version "1.0.0"
  sha256 "3cca1a572b10080c90951b22c53179a6c98b5bcb5714d725dc3bc0d5c0aa13ad"

  url "https://github.com/divitkashyap/SwampShi/releases/download/v#{version}/SwampShi-v#{version}-1-unsigned.zip"
  name "SwampShi"
  desc "Dynamic-island notch hub: music, clipboard, AI agent sessions, build watcher"
  homepage "https://github.com/divitkashyap/SwampShi"

  app "SwampShi.app"

  caveats <<~EOS
    SwampShi is currently distributed unsigned, so macOS blocks the first
    launch. Clear it with:
      xattr -d com.apple.quarantine "/Applications/SwampShi.app"
    or via System Settings > Privacy & Security > "Open Anyway".
  EOS
end
