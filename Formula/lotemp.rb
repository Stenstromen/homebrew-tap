# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.9/lotemp_Darwin_arm64.tar.gz"
      sha256 "a035522b3467eabe26096a69dec0437926ef4e946160d41a1849bd3c3a62e918"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.9/lotemp_Darwin_x86_64.tar.gz"
      sha256 "f4bc84be315772239621e6a55fc1b6829e106f367b61a66c6782ec6cdccdcd22"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.9/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.9/lotemp_Linux_x86_64.tar.gz"
      sha256 "b56bcb016f787fcd03e98a3e8ddc20ef70be446db7e9c821117dec5356b47aaf"

      def install
        bin.install "lotemp"
      end

    end
  end
end
