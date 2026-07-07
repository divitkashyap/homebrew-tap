cask "swampshi" do
  version "1.1.0"
  sha256 "a9ed76e26d0d22cdd84df1a4970348dad912cec97e929a717543db9932aba6e2"

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
