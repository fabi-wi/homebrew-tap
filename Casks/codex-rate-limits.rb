cask "codex-rate-limits" do
  version "0.2.3"
  sha256 "b61edac3733cdb39bbfd6d7f8a6875f5dd0e6f7712ad46de3dea96fb9a433494"

  url "https://github.com/fabi-wi/codex-rate-limits/releases/download/v#{version}/CodexRateLimits-v#{version}-macos-arm64.zip",
      verified: "github.com/fabi-wi/codex-rate-limits/"
  name "Codex Rate Limits"
  desc "Menu bar companion for Codex rate limits"
  homepage "https://github.com/fabi-wi/codex-rate-limits"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "CodexRateLimits.app"

  zap trash: [
    "~/Library/Application Support/CodexRateLimits",
    "~/Library/LaunchAgents/local.codex-rate-limits.watcher.plist",
    "~/Library/Logs/CodexRateLimits",
  ]
end
