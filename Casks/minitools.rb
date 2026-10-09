cask "minitools" do
  version "1.0.8"
  sha256 "5a92e1d38b9f4b6f6753f29ac2cecd38038f977521bfd811c980f87bbf86eb1b"

  url "https://github.com/LuisGil15/MiniTools/releases/download/v#{version}/MiniTools-#{version}.dmg"
  name "MiniTools"
  desc "Dynamic island for macOS with timers, reminders, weather, and plugins"
  homepage "https://github.com/LuisGil15/MiniTools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MiniTools.app"

  uninstall quit: "com.luisgil.MiniTools"
end
