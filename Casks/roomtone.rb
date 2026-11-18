cask "roomtone" do
  version "0.8.3"
  sha256 "a5ca16649d500c5e095afdb405a8893bb5b799c35379b08d96e5cf1a756035b8"

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
