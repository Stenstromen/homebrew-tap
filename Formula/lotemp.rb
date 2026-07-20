# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.3/lotemp_Darwin_arm64.tar.gz"
      sha256 "bd5bbda8187430207309831a9fba1a81944a23fcdde7b7f31f5baf9492169b66"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.3/lotemp_Darwin_x86_64.tar.gz"
      sha256 "d18e252f43b2c7d751ce5c630f839c042f62762d36c9dcf3fd45dcf2ce27ea29"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.3/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.3/lotemp_Linux_x86_64.tar.gz"
      sha256 "36abbb214a4874dee689797833b1e1fb2778ddab4fa11f72af84acacc568b2c0"

      def install
        bin.install "lotemp"
      end

    end
  end
end
