# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.7/lotemp_Darwin_arm64.tar.gz"
      sha256 "6e5bf7c638a5d60271d94ed351b2f4f0a300395dd0a3dedf21986859468aa1d6"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.7/lotemp_Darwin_x86_64.tar.gz"
      sha256 "9b9042cd001acb25a10e197aa29d73fb332a44fc5ecd0ff7ec95e4842021539b"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.7/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.7/lotemp_Linux_x86_64.tar.gz"
      sha256 "9aa0194662d247691ea3fed93f2996959236edbca8862506c913783a08b76461"

      def install
        bin.install "lotemp"
      end

    end
  end
end
