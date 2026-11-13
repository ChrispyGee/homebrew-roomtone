cask "roomtone" do
  version "0.6.2"
  sha256 "8421922abdaf2fccf38751f21742fa1a8b1c4a4c169b8cb3772ee7c8402abcb9"

  url "https://github.com/ChrispyGee/Roomtone/releases/download/v#{version}/roomtone-v#{version}-macos-arm64.dmg"
  name "Roomtone"
  desc "Controller for S1 and S2 wireless speaker systems"
  homepage "https://github.com/ChrispyGee/Roomtone"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Roomtone.app"

  # Roomtone isn't signed or notarised by Apple yet, so macOS asks for confirmation the first
  # time: right-click the app and choose Open.
  zap trash: "~/Library/Application Support/Roomtone"
end
