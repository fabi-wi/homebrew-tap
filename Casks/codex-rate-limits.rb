cask "codex-rate-limits" do
  version "0.2.0"
  sha256 "00291da125d0f35bcd6fccaff8e99d1e94340ac975e87ed1d0038823e2e458d6"

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
