# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.5/lotemp_Darwin_arm64.tar.gz"
      sha256 "bfbe5cf1d73b9b294eeb1ca86d905714789d1efee3d7dfa38ea84e35a020b654"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.5/lotemp_Darwin_x86_64.tar.gz"
      sha256 "ce33d2311be67d05523cfac0ced704ca37786e13d90ce4af15e5b35921c0d147"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.5/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.5/lotemp_Linux_x86_64.tar.gz"
      sha256 "5be5bde673c3568ef80003750d1f08f84bd8e001ea2b88458c064032cd8fdef6"

      def install
        bin.install "lotemp"
      end

    end
  end
end
