# typed: false
# frozen_string_literal: true
class Video2Gif < Formula
  desc "A comprehensive bash script that converts video files to optimized GIFs using ffmpeg and gifsicle"
  homepage "https://github.com/Stenstromen/video2gif"
  version "v0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/video2gif/releases/download/v0.0.0/video2gif_Darwin_arm64.tar.gz"
      sha256 "7f88020f413607cd86a57380c311298f514a1787b5e7b389d10a8e2c0e318a8c"

      def install
        bin.install "video2gif"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/video2gif/releases/download/v0.0.0/video2gif_Darwin_x86_64.tar.gz"
      sha256 "49108c209c08b0579e3760ad3297f4fa2fa7a88f191680a028abf22b70585ef0"

      def install
        bin.install "video2gif"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/video2gif/releases/download/v0.0.0/video2gif_Linux_arm64.tar.gz"
      sha256 "49108c209c08b0579e3760ad3297f4fa2fa7a88f191680a028abf22b70585ef0"

      def install
        bin.install "video2gif"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/video2gif/releases/download/v0.0.0/video2gif_Linux_x86_64.tar.gz"
      sha256 "7f88020f413607cd86a57380c311298f514a1787b5e7b389d10a8e2c0e318a8c"

      def install
        bin.install "video2gif"
      end

    end
  end
end
