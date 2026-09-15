cask "shareclip" do
  arch arm: "arm64", intel: "x64"

  version "4.0.4"
  sha256 arm:   "7efcab2a3b337c537955579e13e617df7235775e6d2bbd655cbb22b6a69f0e88",
         intel: "c8b0fc64ebfdd000196a2fa3644c26fcb92e06c7055d99f604be7f3b2548997a"

  url "https://github.com/NovaMindLab/AIShare-Grabber/releases/download/v#{version}/ShareCLIP-Mac-#{version}-#{arch}.dmg",
      verified: "github.com/NovaMindLab/AIShare-Grabber/"
  name "ShareCLIP"
  desc "Private P2P AirDrop Alternative, Local AI Photo Search & Media Manager"
  homepage "https://novamindlab.github.io/AIShare-Grabber/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ShareCLIP.app"

  zap trash: [
    "~/Library/Application Support/shareclip",
    "~/Library/Logs/shareclip",
    "~/Library/Preferences/com.shareclip.album.sync.plist",
    "~/Library/Saved Application State/com.shareclip.album.sync.savedState",
  ]
end
