# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.2/lotemp_Darwin_arm64.tar.gz"
      sha256 "2c7588bc30a28570ef9cb38b98276ec97eb90d5659a3cf91ed84333e1789b94e"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.2/lotemp_Darwin_x86_64.tar.gz"
      sha256 "5c18813484c3108f93e5ef56d7d6a3d09d7fa03cff48bd0d4ec8562b09cb1b9f"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.2/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.2/lotemp_Linux_x86_64.tar.gz"
      sha256 "65db7a4f7cb672a109ab0bd558ba817a67023d13170923ec31502df175956609"

      def install
        bin.install "lotemp"
      end

    end
  end
end
