# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.0/lotemp_Darwin_arm64.tar.gz"
      sha256 "40e42e50b40031334f712252c0bcadfecd95ebd5d942c0cf1107a5b277452445"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.0/lotemp_Darwin_x86_64.tar.gz"
      sha256 "df049049a08b3610451c1525a57bc9bebf7a23f3ba804453b998d16f1ff439bb"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.0/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.0/lotemp_Linux_x86_64.tar.gz"
      sha256 "fa3b000a7a708add4fb1e3eab65776daa93e25a8664576c970dab106c93c27cd"

      def install
        bin.install "lotemp"
      end

    end
  end
end
