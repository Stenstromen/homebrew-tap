# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.2/lotemp_Darwin_arm64.tar.gz"
      sha256 "e5c87f1d474d93bc386cb5a6d404998037f0f2287d6d7b10dc97a061f464379c"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.2/lotemp_Darwin_x86_64.tar.gz"
      sha256 "fe8668e71e92c3666b8892716e8ddf23133292af7d35a5314689dc56527f54b5"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.2/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.1.2/lotemp_Linux_x86_64.tar.gz"
      sha256 "5aa1e4071dbbd22b8741f0db9f196ad835c2974af364be7168bc2e65fbcb5642"

      def install
        bin.install "lotemp"
      end

    end
  end
end
