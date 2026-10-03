# typed: false
# frozen_string_literal: true

class Kb < Formula
  desc "Terminal notes and Kanban boards, kept as Markdown files"
  homepage "https://github.com/jeryldev/kb"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.1/kb_darwin_amd64.tar.gz"
      sha256 "145c7e15371f5f8940e4fefb3139a114c57f603a7e1c7ce5c1b129bebcb95eb4"

      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.1/kb_darwin_arm64.tar.gz"
      sha256 "ce9b769cbc965a83a2ab72ea5ff5b2734389e970298cac35e45cc1cf3d0eef31"

      define_method(:install) do
        bin.install "kb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.1/kb_linux_amd64.tar.gz"
      sha256 "8a4c49777ff39289e364232317e4c1da47aebd245e6438b3c345336944ac6902"
      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.1/kb_linux_arm64.tar.gz"
      sha256 "4b1486781eea1630f1f19f5dbd727c93b194ff7185b2e46ce4e77f5e06c6a9eb"
      define_method(:install) do
        bin.install "kb"
      end
    end
  end
end
