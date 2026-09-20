cask "switchboard" do
  version "0.2.1"
  sha256 "1dcd3df076ca440267ab822170518f5391baccc0f1b3469f881ed83ec65c4f8a"

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
