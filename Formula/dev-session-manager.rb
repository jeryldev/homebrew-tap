class DevSessionManager < Formula
  desc "Quick development session bootstrapping with tmux"
  homepage "https://github.com/jeryldev/dev-session-manager"
  url "https://github.com/jeryldev/dev-session-manager/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "ab153495582421d7772aa6095ccbe8ccd30cfa2ec781ce058f86b3cdca126b99"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "dev.zsh" => "dev"
  end

  test do
    assert_match "Dev session manager", shell_output("#{bin}/dev help")
  end
end
