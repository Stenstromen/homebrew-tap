# typed: false
# frozen_string_literal: true
class non < Formula
  desc "Simple line break and carriage return remover"
  homepage "https://github.com/Stenstromen/non"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.0/non_Darwin_arm64.tar.gz"
      sha256 "15c4a822a87653dbe154db3e9bd214a07a060ab396e845a0e267a925fe7ddb28"

      def install
        bin.install "non"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.0/non_Darwin_x86_64.tar.gz"
      sha256 "db2fbcbc5cb5ed4ec64206ff5891c36263cad1c3937218d6705d8f8468542277"

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
      url "https://github.com/Stenstromen/non/releases/download/v1.0.0/non_Linux_arm64.tar.gz"
      sha256 "ab898589ed3bec092c3f87dc4e4958d9425d8484e7c8a113adba17361e148448"

      def install
        bin.install "non"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/non/releases/download/v1.0.0/non_Linux_x86_64.tar.gz"
      sha256 "decaab5c2dcb2cea5ce36df93ca1282f9d70ab8e821109170138d07ed65bbb09"

      def install
        bin.install "non"
      end

      test do
        assert_match "Usage:", shell_output("#{bin}/non -h 2>&1")
      end
    end
  end
end
