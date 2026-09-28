# This file is generated from dyndynjyxa/aio-coding-hub.
# Update it by running `node scripts/support-matrix.mjs homebrew-cask` in the source repo.
cask "aio-coding-hub" do
  arch arm: "arm", intel: "intel"

  version "0.60.20"
  sha256 arm:   "9a25dae953145beaa92b350ef33df8d23beba82a90f36e7cfba078e4aaf17872",
         intel: "80127b540a07f5775bdb69b9e54c62549c33093f53fbbd21fc87111d2ffddbbc"

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
