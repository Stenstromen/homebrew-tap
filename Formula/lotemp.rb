# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.11/lotemp_Darwin_arm64.tar.gz"
      sha256 "52a270a60580e785dd64c5aef5ac4a9f048bbf9a1c47580fd5f5377c6f79d69e"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.11/lotemp_Darwin_x86_64.tar.gz"
      sha256 "3e1083a741224d563d5c62304630ab07e6b4a13ea24b97afda0420ad3929d221"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.11/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.11/lotemp_Linux_x86_64.tar.gz"
      sha256 "ab592d1a15535206434b553bb617a18ba32d8a7f6ec19abd8769cbe38d35e2ef"

      def install
        bin.install "lotemp"
      end

    end
  end
end
