cask "gearbox" do
  version "0.2.0"
  sha256 "cb9e59f132777ecb1b7b3a4370ac5835908d7d20ebe5aec85525087da9978048"

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
