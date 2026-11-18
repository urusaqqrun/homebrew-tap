cask "jarvis-voice" do
  version "1.1.0"
  sha256 "99d55035cd54dee312db78ee9c57e8b634bbd7a50af4dbd3e9ff0585f80cd8fb"

  url "https://github.com/urusaqqrun/jarvis-voice/releases/download/v#{version}/JarvisVoice-#{version}.dmg"
  name "JarvisVoice"
  desc "Always-on voice typing that types into the app you're using"
  homepage "https://jarvis-voice.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "JarvisVoice.app"

  zap trash: [
    "~/.voice-dictation",
    "~/Library/Preferences/com.urusa.voice-dictation.plist",
  ]
end
