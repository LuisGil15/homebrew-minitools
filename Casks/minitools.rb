cask "minitools" do
  version "1.0.3"
  sha256 "5eeff0cc8dd01ec2146c4de533b0dee5b7a8699208ffd9f3ed9adad2b3ee2e1b"

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
