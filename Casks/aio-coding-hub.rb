# This file is generated from dyndynjyxa/aio-coding-hub.
# Update it by running `node scripts/support-matrix.mjs homebrew-cask` in the source repo.
cask "aio-coding-hub" do
  arch arm: "arm", intel: "intel"

  version "0.60.13"
  sha256 arm:   "4d4b8143e1fe1b3447740ee7f1cdd8c9c5d71eb2ce87ae930b78a83baf3c9419",
         intel: "5c5522ab989a37be7590e7e1973df0435d29eff7f250d9fc130eee3cc53b45dc"

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
