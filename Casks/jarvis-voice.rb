cask "jarvis-voice" do
  version "1.0.0"
  sha256 "f49845a8dcc79940f7b68ebb69e56999a0be388345faa9820e7646332d000642"

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
