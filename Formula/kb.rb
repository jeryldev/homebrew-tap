# typed: false
# frozen_string_literal: true

class Kb < Formula
  desc "Terminal notes and Kanban boards, kept as Markdown files"
  homepage "https://github.com/jeryldev/kb"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.0/kb_darwin_amd64.tar.gz"
      sha256 "3ba8a626d0e44ea131c75384abdba8a0cd64f3073fd262bc4e2dfdb43ae6c87d"

      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.0/kb_darwin_arm64.tar.gz"
      sha256 "e65a35585779bac993c4bb7ea007817dce239c11c44ea4982edd6f98877c7532"

      define_method(:install) do
        bin.install "kb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.0/kb_linux_amd64.tar.gz"
      sha256 "dabdffaa5355373cf459f639ddcd3c3543e4c2a3ab0eb8bbe44165424b0845ea"
      define_method(:install) do
        bin.install "kb"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jeryldev/kb/releases/download/v0.4.0/kb_linux_arm64.tar.gz"
      sha256 "2f21105e8ea42ce08a09c5e7ba548477b07cf7caf637326fc15d0267c28b2db2"
      define_method(:install) do
        bin.install "kb"
      end
    end
  end
end
