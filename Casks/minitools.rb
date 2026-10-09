cask "minitools" do
  version "1.0.5"
  sha256 "cf88a7c84f3201fa606df981ead7422bd27e0d2f6c93be6cff289d96eb2a15d0"

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
