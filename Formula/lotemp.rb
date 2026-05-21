# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.1/lotemp_Darwin_arm64.tar.gz"
      sha256 "081536a4c5b6c6040f66463788acf9bebdaafc767bba5e96bf29f1351fa59f9d"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.1/lotemp_Darwin_x86_64.tar.gz"
      sha256 "07c2ca235a00813d11ab6b9006dee27ac87c881db0c1f633747d7330f80ce8ef"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.1/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.1/lotemp_Linux_x86_64.tar.gz"
      sha256 "737d3c6229e0bf2df23bf492b96103b4960267f3c3b8fa12dbd038429a6248a7"

      def install
        bin.install "lotemp"
      end

    end
  end
end
