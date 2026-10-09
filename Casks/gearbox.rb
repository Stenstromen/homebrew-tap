cask "gearbox" do
  version "0.1.0"
  sha256 "48b73d9087300a191815703f84f21e27f2c8eb94fce301495efecb51cdbbba4e"

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
