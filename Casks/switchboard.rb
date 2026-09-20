cask "switchboard" do
  version "0.2.0"
  sha256 "16344643b5734bc83f8b9dc19982983136e7e15570f07cfe45dd08aaffa23645"

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
