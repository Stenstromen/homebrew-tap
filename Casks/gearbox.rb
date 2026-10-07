cask "gearbox" do
  version "0.0.0"
  sha256 "e9a6aba4bb18d2df0a7eed15974eede7adf2f05db97e95b60be5196f899ff03f"

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
