# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.1/lotemp_Darwin_arm64.tar.gz"
      sha256 "fabd191a28429d43b8f16766a5567f11c4ffc471176eeab9c5e00fe202807855"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.1/lotemp_Darwin_x86_64.tar.gz"
      sha256 "9d05fd6fbdd3a814a9ff80ef6b14d1e82a3c018af48e2ace6d8f159b9c8f7193"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.1/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.1/lotemp_Linux_x86_64.tar.gz"
      sha256 "41c84a53bfe00b63179840bb39ada070c09c7efb32be2853beafe4415cbfbab9"

      def install
        bin.install "lotemp"
      end

    end
  end
end
