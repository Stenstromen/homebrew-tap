cask "gearbox" do
  version "0.3.2"
  sha256 "d5a145034be1f460469e3291d18a787c13072c40bf5dfea1ab4b56fe67b61c90"

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
