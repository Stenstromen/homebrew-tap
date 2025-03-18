# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.3/lotemp_Darwin_arm64.tar.gz"
      sha256 "e6197e72134407faab8ae6e654a350a77dc681d08eb680be2e2cee8584f37b35"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.3/lotemp_Darwin_x86_64.tar.gz"
      sha256 "0f7f86d692704ea5e979bdffa9a7ab66052e055ed55d24a623b196aa116b9874"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.3/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.3/lotemp_Linux_x86_64.tar.gz"
      sha256 "e54412c82503c439b28492cf8105c89a5f2573838ff81469f02ae14132e9ea8e"

      def install
        bin.install "lotemp"
      end

    end
  end
end
