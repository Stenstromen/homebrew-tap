# typed: false
# frozen_string_literal: true
class Non < Formula
  desc "Simple line break and carriage return remover"
  homepage "https://github.com/Stenstromen/non"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.1/non_Darwin_arm64.tar.gz"
      sha256 "da82ee1ce8bcf57c3ae9e06839391e9262cb0f0b9cde12713276c818d155f526"

      def install
        bin.install "non"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.1/non_Darwin_x86_64.tar.gz"
      sha256 "a28c5f05389df4a82022a510a45fdf04b932cf2922c36948fcc4a980c359bbaa"

      def install
        bin.install "non"
      end

      test do
        assert_match "Usage:", shell_output("#{bin}/non -h 2>&1")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.1/non_Linux_arm64.tar.gz"
      sha256 "540bb6334b1c05ee70b7b09b596a1d97ccdfa23095e44f2e2f926bea70f5d258"

      def install
        bin.install "non"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.1/non_Linux_x86_64.tar.gz"
      sha256 "69c9c66190729129771e3248bbaaff48dfa3814bfab8793dbd437ce2d25d7ede"

      def install
        bin.install "non"
      end

      test do
        assert_match "Usage:", shell_output("#{bin}/non -h 2>&1")
      end
    end
  end
end
