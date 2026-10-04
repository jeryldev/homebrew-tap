# typed: false
# frozen_string_literal: true

class Kb < Formula
  desc "Terminal notes and Kanban boards, kept as Markdown files"
  homepage "https://github.com/jeryldev/kb"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.2/kb_darwin_amd64.tar.gz"
      sha256 "5e068c89cf049f5abd84bc274b9807c888b9f46696c4ac7d8796f39ef7de1277"

      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.2/kb_darwin_arm64.tar.gz"
      sha256 "6d16ec65d8f32a82c88f34e62ad697dcec539b7d8314d9b4d863e909e6cd3700"

      define_method(:install) do
        bin.install "kb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.2/kb_linux_amd64.tar.gz"
      sha256 "f6b20d0b50cbd7d035208b12714d9789f5a0156dfe5afa59fa497e557b57f31f"
      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.2/kb_linux_arm64.tar.gz"
      sha256 "5bd4f387c6fd2d1e78acaf9f77f79a94f8e6f557658abfdbcf03e8c216c5ce57"
      define_method(:install) do
        bin.install "kb"
      end
    end
  end
end
