cask "minitools" do
  version "1.0.7"
  sha256 "cd367b24b2ee98a4394a19095a39192b9f0645822248e1949351aa628e730264"

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
