# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.6/lotemp_Darwin_arm64.tar.gz"
      sha256 "b7bd94411aa5de0c3a911c36bc845d3d6ee4a9669671f198bc4995fab4d0eb2a"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.6/lotemp_Darwin_x86_64.tar.gz"
      sha256 "ac8e11732166147cb3258286aba33dcef37c3c43515a278ac3bf112b4c6c614c"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.6/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.6/lotemp_Linux_x86_64.tar.gz"
      sha256 "f3c68a13fb59682bd3bca39a7d042cba7da0ee87563da0876eab36369d3e2854"

      def install
        bin.install "lotemp"
      end

    end
  end
end
