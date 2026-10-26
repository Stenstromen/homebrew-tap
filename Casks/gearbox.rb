cask "gearbox" do
  version "0.3.1"
  sha256 "1f68924ff0cffed0f30527aff162c5b2963f8755bf5c6f5d7cde986cd66cdc4b"

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
