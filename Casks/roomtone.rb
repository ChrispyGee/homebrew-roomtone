cask "roomtone" do
  version "0.9.2"
  sha256 "a76758abf6a6bf8642c842def66b80b4e33a74498b69486c3732466855d3c45f"

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

  # Roomtone isn't signed or notarised by Apple yet, so macOS asks for confirmation the first time.
  caveats <<~EOS
    Roomtone isn't signed by Apple yet, so macOS blocks it the first time you open it.
    Open it, click Done, then go to System Settings > Privacy & Security and click "Open Anyway".
    Allow it to find devices on your local network when asked, or it can't see your speakers.
    Step by step: https://github.com/ChrispyGee/Roomtone/blob/main/docs/FIRST_RUN.md
  EOS

  zap trash: "~/Library/Application Support/Roomtone"
end
