class DevSessionManager < Formula
  desc "Quick development session bootstrapping with tmux"
  homepage "https://github.com/jeryldev/dev-session-manager"
  url "https://github.com/jeryldev/dev-session-manager/archive/refs/tags/v3.2.1.tar.gz"
  sha256 "ab871ea5b48d7eadb8f3db46f216cbfac1f61ce7333133193161f49c1a518c3e"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "dev.zsh" => "dev"
  end

  test do
    assert_match "Dev session manager", shell_output("#{bin}/dev help")
  end
end
