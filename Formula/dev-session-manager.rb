class DevSessionManager < Formula
  desc "Quick development session bootstrapping with tmux"
  homepage "https://github.com/jeryldev/dev-session-manager"
  url "https://github.com/jeryldev/dev-session-manager/archive/refs/tags/v2.1.3.tar.gz"
  sha256 "635f79f9f7c9b37205ea16e334f599c30dcaccc5b86226c0e4239f65f25958fc"
  license "MIT"

  depends_on "tmux"

  def install
    bin.install "dev.zsh" => "dev"
  end

  test do
    assert_match "Dev session manager", shell_output("#{bin}/dev help")
  end
end
