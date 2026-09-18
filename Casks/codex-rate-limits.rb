cask "codex-rate-limits" do
  version "0.2.4"
  sha256 "a8487edd3af0897b14cc1c02ab811e04ae0a0cccc88c1077d57e262e0b07e0bd"

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
