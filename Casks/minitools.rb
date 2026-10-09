cask "minitools" do
  version "1.0.2"
  sha256 "3011185a60a2f08b5bfe87e30379c8824e1d6d7d33f654f58d627d9609d0e3fb"

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
