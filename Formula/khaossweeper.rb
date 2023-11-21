# Manually generated homebrew formula for khaossweeper
class Khaossweeper < Formula
  desc "KhaosSweeper, A thrilling Kubernetes minesweeper game."
  homepage "https://github.com/Stenstromen/khaossweeper"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/khaossweeper/releases/download/v1.0.1/khaossweeper_Darwin_arm64.tar.gz"
      sha256 "5af7ad36610e059f939c3c55903d5d8f143bec1db3b0ac309a1c7f50c00cbb15"

      def install
        bin.install "khaossweeper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/khaossweeper/releases/download/v1.0.1/khaossweeper_Darwin_x86_64.tar.gz"
      sha256 "9e2405e10b0a9cd5f61926d4351332dae7883f6cc77d81d14aa0f465c47c4e35"

      def install
        bin.install "khaossweeper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/khaossweeper/releases/download/v1.0.1/khaossweeper_Linux_arm64.tar.gz"
      sha256 "056e5fd2b550ff7fedc7379d6ce41e060995855dece652d08da16446fdd4f207"

      def install
        bin.install "khaossweeper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/khaossweeper/releases/download/v1.0.1/khaossweeper_Linux_x86_64.tar.gz"
      sha256 "0fbd7329615a3aae4e0683078db37044ea6b4523a616a4843718c3888114de12"

      def install
        bin.install "khaossweeper"
      end
    end
  end
end
