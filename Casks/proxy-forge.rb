cask "proxy-forge" do
  version "0.8.0"
  sha256 "37e62b299d0ae62d8da6235060399957ecb07d656f21ee9d08242150d230feba"

  url "https://github.com/doubleniki/proxy-forge/releases/download/v#{version}/ProxyForge.dmg"
  name "ProxyForge"
  desc "Secure SOCKS5 proxy client for macOS"
  homepage "https://github.com/doubleniki/proxy-forge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ProxyForge.app"

  zap trash: [
    "~/Library/Application Support/ShadowsocksX-NG",
    "~/Library/Caches/com.doubleniki.ProxyForge",
    "~/Library/LaunchAgents/com.qiuyuzhou.shadowsocksX-NG.*",
    "~/Library/Logs/ss-local.log",
    "~/Library/Logs/privoxy.log",
    "~/Library/Preferences/com.doubleniki.ProxyForge.plist",
    "~/.ShadowsocksX-NG",
  ]
end
