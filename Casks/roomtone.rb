cask "roomtone" do
  version "0.8.1"
  sha256 "92ed0a4700ad895d3bf3b6cd2f2613e2bf4097c071efc446dd682008a9c76691"

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
