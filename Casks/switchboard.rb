cask "switchboard" do
  version "0.2.2"
  sha256 "3bcfcee796de06b2183386cf60123bc917aecd8240f6f48be9bbefeacc3fe55f"

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
