# typed: false
# frozen_string_literal: true
class Vaultctx < Formula
  desc "Description of your project"
  homepage "https://github.com/Stenstromen/vaultctx"
  version "v1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/vaultctx/releases/download/vv1.0/vaultctx_Darwin_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "vaultctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/vaultctx/releases/download/vv1.0/vaultctx_Darwin_x86_64.tar.gz"
      sha256 ""

      def install
        bin.install "vaultctx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/vaultctx/releases/download/vv1.0/vaultctx_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "vaultctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/vaultctx/releases/download/vv1.0/vaultctx_Linux_x86_64.tar.gz"
      sha256 ""

      def install
        bin.install "vaultctx"
      end
    end
  end
end
