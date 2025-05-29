# typed: false
# frozen_string_literal: true
class Crabflow < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/crabflow"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.0/crabflow_Darwin_arm64.tar.gz"
      sha256 "6cbbeab34d48932c61aae20d1aceacb55038b029777a7ce551b1d855537fc6b0"

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.0/crabflow_Darwin_x86_64.tar.gz"
      sha256 "7bdc82d28ddd9b7f57891fa16dc0a3ccf1b165ad10ac427d727c130a12efbeed"

      def install
        bin.install "crabflow"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.0/crabflow_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.0/crabflow_Linux_x86_64.tar.gz"
      sha256 "4d6eb2f04cd75391bea1831a18e8dca5a873dd4fb1f10789e44faacbc018ab40"

      def install
        bin.install "crabflow"
      end

    end
  end
end
