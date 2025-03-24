# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.4/lotemp_Darwin_arm64.tar.gz"
      sha256 "41ad503368156564644a35d8c07360b6df758bf2ac57391ed20a810d2ed44b70"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.4/lotemp_Darwin_x86_64.tar.gz"
      sha256 "bf2cdf628f2584f7e2cdfcca4b5cdac4ecf78f23e9044edbf9f2c87db0bc8cfc"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.4/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.4/lotemp_Linux_x86_64.tar.gz"
      sha256 "2bdaf38409a9eb9ef6989d185a363d037c2740ec4dd3a12f253d10aacc707d5e"

      def install
        bin.install "lotemp"
      end

    end
  end
end
