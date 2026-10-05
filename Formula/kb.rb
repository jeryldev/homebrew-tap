# typed: false
# frozen_string_literal: true

class Kb < Formula
  desc "Terminal notes and Kanban boards, kept as Markdown files"
  homepage "https://github.com/jeryldev/kb"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.3/kb_darwin_amd64.tar.gz"
      sha256 "d5b05869d7dd7b097abd320c8c4ec8fbfcd1762df5b06042a05b1c6dfe6506f7"

      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.3/kb_darwin_arm64.tar.gz"
      sha256 "2d463ed72f50de05b2166ea067673fa0a0c55855bbfa89492186dff1005032dd"

      define_method(:install) do
        bin.install "kb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.3/kb_linux_amd64.tar.gz"
      sha256 "12a0787ee8685751769274127043cf194835a03ca06f5651c80f9c47eb69ae67"
      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.3/kb_linux_arm64.tar.gz"
      sha256 "27b40b148edce51b7e13f3af363b419eeb7febb652ed8fbae59efcaf4ea8d527"
      define_method(:install) do
        bin.install "kb"
      end
    end
  end
end
