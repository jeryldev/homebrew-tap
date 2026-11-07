class DevSessionManager < Formula
  desc "Quick development session bootstrapping with tmux"
  homepage "https://github.com/jeryldev/dev-session-manager"
  url "https://github.com/jeryldev/dev-session-manager/archive/refs/tags/v3.8.0.tar.gz"
  sha256 "b541326d021af11dfaffd28bfe15d7600ebceb1e2843205e88b254c4e0d622f0"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "dev.zsh" => "dev"
  end

  test do
    assert_match "Dev session manager", shell_output("#{bin}/dev help")
  end
end
