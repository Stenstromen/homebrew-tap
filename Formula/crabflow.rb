# typed: false
# frozen_string_literal: true
class Crabflow < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/crabflow"
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.1/crabflow_Darwin_arm64.tar.gz"
      sha256 "7e39572b691d5d901f710d723d01b8d3d84c1f30f9d97bd9139ae7612f5ef933"

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.1/crabflow_Darwin_x86_64.tar.gz"
      sha256 "83d9f43eadbde85fb955a1e54c2e997388148ddcc7c777702118a6e1683cce4e"

      def install
        bin.install "crabflow"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.1/crabflow_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.1/crabflow_Linux_x86_64.tar.gz"
      sha256 "6a94065776ae50b11b8db1f7b319e1430b274a62a04a8f1cabfc547cc6d9ab0c"

      def install
        bin.install "crabflow"
      end

    end
  end
end
