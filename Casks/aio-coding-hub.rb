# This file is generated from dyndynjyxa/aio-coding-hub.
# Update it by running `node scripts/support-matrix.mjs homebrew-cask` in the source repo.
cask "aio-coding-hub" do
  arch arm: "arm", intel: "intel"

  version "0.60.21"
  sha256 arm:   "37574737354a319545400a546c769257e5497a310a1c56f893b34c82ff7d081a",
         intel: "4c541e4fcac3182241953cddd66294411935f7d55c386831dae3c28a4364aa1e"

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
