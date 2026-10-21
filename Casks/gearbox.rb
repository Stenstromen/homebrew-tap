cask "gearbox" do
  version "0.3.0"
  sha256 "8f3fb3728167b73cef8d1eba4a3abbfedc15d8a38c87878053d2a01d03349035"

  url "https://github.com/Stenstromen/gearbox/releases/download/v#{version}/Gearbox-#{version}.dmg"
  name "Gearbox"
  desc "View a remote Transmission daemon"
  homepage "https://github.com/Stenstromen/gearbox"

  depends_on macos: :monterey

  app "gearbox.app"

  zap trash: [
    "~/Library/Application Support/Gearbox",
  ]
end
