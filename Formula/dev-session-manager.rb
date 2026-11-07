class DevSessionManager < Formula
  desc "Quick development session bootstrapping with tmux"
  homepage "https://github.com/jeryldev/dev-session-manager"
  url "https://github.com/jeryldev/dev-session-manager/archive/refs/tags/v3.10.0.tar.gz"
  sha256 "8fabe1a22f27ca1dcd1eb5bd01a07c7e92ec91ecf5ba5efd9f85bb558f49ac87"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "dev.zsh" => "dev"
  end

  test do
    assert_match "Dev session manager", shell_output("#{bin}/dev help")
  end
end
