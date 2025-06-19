# typed: false
# frozen_string_literal: true
class Crabflow < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/crabflow"
  version "v0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.2/crabflow_Darwin_arm64.tar.gz"
      sha256 "629acc3ad0ad649e88999021e1b494091734a7e63e059cdefd328c20944a0b2e"

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.2/crabflow_Darwin_x86_64.tar.gz"
      sha256 "382c49926bc19415e73dd8e9a461e882f2561f61b87a63be19df09e8ac65e8db"

      def install
        bin.install "crabflow"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.2/crabflow_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "crabflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/crabflow/releases/download/v0.1.2/crabflow_Linux_x86_64.tar.gz"
      sha256 "51d52f4cb24c51580367e031c21097d06f27707ffaac8c4a1070d005adc0aaba"

      def install
        bin.install "crabflow"
      end

    end
  end
end
