# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotlsaflare < Formula
  desc "Go binary for updating TLSA DANE record on cloudflare from x509 Certificate"
  homepage "https://github.com/Stenstromen/gotlsaflare"
  version "2.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.4.1/gotlsaflare_Darwin_x86_64.tar.gz"
      sha256 "2ea6ca360ff5f7cbd4b5d4d32f2effff6543c8520ce7309db72d6204b1ac7d72"

      def install
        bin.install "gotlsaflare"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.4.1/gotlsaflare_Darwin_arm64.tar.gz"
      sha256 "8bb0adc5bcf017cee53e709a0838a4b4ab2f9fdb65894fd6b59c7fb9ff94c83c"

      def install
        bin.install "gotlsaflare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.4.1/gotlsaflare_Linux_x86_64.tar.gz"
        sha256 "24a3a02a845fafc25ca54986d8b37854ebf7a37322caabe41e10092d5d1e3a22"

        def install
          bin.install "gotlsaflare"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.4.1/gotlsaflare_Linux_arm64.tar.gz"
        sha256 "153f9556f5afaa6696474985772008d22ec599a22a40866b3e28fedeaa3c455d"

        def install
          bin.install "gotlsaflare"
        end
      end
    end
  end
end
