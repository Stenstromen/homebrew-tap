# typed: false
# frozen_string_literal: true
class Lotemp < Formula
  desc "Fetch Current Local Outside Temperature In the Terminal"
  homepage "https://github.com/Stenstromen/lotemp"
  version "v1.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.8/lotemp_Darwin_arm64.tar.gz"
      sha256 "0ce2f3541e0779a57e707a7c34d440c8e1329f22b5b5b1a28eaab02a8c76a270"

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.8/lotemp_Darwin_x86_64.tar.gz"
      sha256 "cd4c33508492ccf287bae9b172cad2b5dec9b0c79494f1b729542dfad3e8d3cd"

      def install
        bin.install "lotemp"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.8/lotemp_Linux_arm64.tar.gz"
      sha256 ""

      def install
        bin.install "lotemp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/lotemp/releases/download/v1.0.8/lotemp_Linux_x86_64.tar.gz"
      sha256 "abfd9065932310dfccd7cce2def3d0418203eef1c19d2242178c3335ad8ad4da"

      def install
        bin.install "lotemp"
      end

    end
  end
end
