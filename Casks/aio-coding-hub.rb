# This file is generated from dyndynjyxa/aio-coding-hub.
# Update it by running `node scripts/support-matrix.mjs homebrew-cask` in the source repo.
cask "aio-coding-hub" do
  arch arm: "arm", intel: "intel"

  version "0.60.14"
  sha256 arm:   "d12818a5f3b8f72f313d5d7eae066dbf192ea16149369d509db8be65e7bdfd37",
         intel: "25da2f6fa8205818cf489c985d94c0ec904cb9bcbd08ad9f22fc6884b61547be"

  url "https://github.com/dyndynjyxa/aio-coding-hub/releases/download/aio-coding-hub-v#{version}/aio-coding-hub-macos-#{arch}.zip"
  name "AIO Coding Hub"
  desc "Local AI CLI unified gateway"
  homepage "https://github.com/dyndynjyxa/aio-coding-hub"

  auto_updates true
  depends_on :macos

  app "AIO Coding Hub.app"

  zap trash: [
    "~/Library/Application Support/io.aio.codinghub",
    "~/Library/Caches/io.aio.codinghub",
    "~/Library/Preferences/io.aio.codinghub.plist",
    "~/Library/Saved Application State/io.aio.codinghub.savedState",
  ]
end
