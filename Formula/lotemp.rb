# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.0/lotemp_Darwin_arm64.tar.gz"
      sha256 "1df8da9ddc4c450052420d441d56d0d3f7b9852aeadd23e3d37631ba3fbf893b"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.0/lotemp_Darwin_x86_64.tar.gz"
      sha256 "bddc79e0da128b02fca1627d2a5444a7c8564269dc7b4eb46b3e212e16a66843"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.0/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.0/lotemp_Linux_x86_64.tar.gz"
      sha256 "1183ab8ac81152d32abdb46c7c1098850862045e3365763938b563e0107c2bd9"

      def install
        bin.install "lotemp"
      end

    end
  end
end
