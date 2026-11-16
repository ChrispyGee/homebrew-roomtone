cask "roomtone" do
  version "0.7.1"
  sha256 "950de98c87d5333a74a77e229cf0ae4d7b71e622ee7dc72e616aad1f41c7d3b2"

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
