cask "switchboard" do
  version "0.0.0"
  sha256 "0dcf8196e252ba8da55b2dcb7f5da896564fb027649f20bae2a47ee9b630592f"

  url "https://github.com/Stenstromen/switchboard/releases/download/v#{version}/Switchboard-#{version}.dmg"
  name "Switchboard"
  desc "SSH tunnel manager around OpenSSH"
  homepage "https://github.com/Stenstromen/switchboard"

  depends_on macos: :monterey

  app "Switchboard.app"

  zap trash: [
    "~/Library/Application Support/Switchboard",
  ]
end
