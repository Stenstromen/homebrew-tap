cask "switchboard" do
  version "0.1.0"
  sha256 "e0723e3adeea9f00ec372e0db862defa57d15af09ea1346fd6ae51f98005a5bc"

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
