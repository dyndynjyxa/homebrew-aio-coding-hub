# This file is generated from dyndynjyxa/aio-coding-hub.
# Update it by running `node scripts/support-matrix.mjs homebrew-cask` in the source repo.
cask "aio-coding-hub" do
  arch arm: "arm", intel: "intel"

  version "0.60.6"
  sha256 arm:   "c41046702127c4ab0d90597dbc952143c70fe743f3dc4965cac81c361370613c",
         intel: "d4cf8107a334d67909cbb1caaf26147a5176e4d5539d34ed58f42b14b715ce84"

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
