# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.10/lotemp_Darwin_arm64.tar.gz"
      sha256 "e3e63d0b8d32a62cb8722807504f850d2dc842ee27e30498660fee5f66483b82"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.10/lotemp_Darwin_x86_64.tar.gz"
      sha256 "58a73e861f286ceb459b3b2b7bebd18bb034036af4c6149ea097fee9adcb6d78"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.10/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.10/lotemp_Linux_x86_64.tar.gz"
      sha256 "091801586b53d4d966d211af28ad0d912e4b6d495ff13951c5853b89bd07b558"

      def install
        bin.install "lotemp"
      end

    end
  end
end
