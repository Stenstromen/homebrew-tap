# typed: false
# frozen_string_literal: true
class Crabflow < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/crabflow"
  version "v0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.3/crabflow_Darwin_arm64.tar.gz"
      sha256 "2875c8ae2653f55c3a8fb2f67a32079b1e6aeaa7a95aea94cd68ffd273bc5c83"

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.3/crabflow_Darwin_x86_64.tar.gz"
      sha256 "5b5ff7b9b57b8334bf542b3edb21a310fb1e5b12fa0200cd52abbec20140fdca"

      def install
        bin.install "crabflow"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.3/crabflow_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.3/crabflow_Linux_x86_64.tar.gz"
      sha256 "ec88eb2d520d4760ca58d247eff7ac963ffed76bc776cb1c12aacde1c37f8a47"

      def install
        bin.install "crabflow"
      end

    end
  end
end
