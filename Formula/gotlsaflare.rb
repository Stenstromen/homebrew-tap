# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotlsaflare < Formula
  desc "Go binary for updating TLSA DANE record on cloudflare from x509 Certificate"
  homepage "https://github.com/Stenstromen/gotlsaflare"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.0.0/gotlsaflare_2.0.0_Darwin_arm64.tar.gz"
      sha256 "a68c38e35863c14721019e52fc4b0ff9403bcca1b9c0ba481c60bb47a8ebd826"

      def install
        bin.install "gotlsaflare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.0.0/gotlsaflare_2.0.0_Darwin_x86_64.tar.gz"
      sha256 "cf773812135a7e19f52e04c72e603b6515018d62c9cab8a3b35023cacc2a88b3"

      def install
        bin.install "gotlsaflare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.0.0/gotlsaflare_2.0.0_Linux_x86_64.tar.gz"
      sha256 "91d6ab475387d8ef8a3e3ea5ece3cf6fb875c31cddbc2b70fbc931d9edf18f0d"

      def install
        bin.install "gotlsaflare"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/gotlsaflare/releases/download/v2.0.0/gotlsaflare_2.0.0_Linux_arm64.tar.gz"
      sha256 "7429cad8efbc3b48df05732ba889d74a8e423a73c3f9c8c81908d957c5762b16"

      def install
        bin.install "gotlsaflare"
      end
    end
  end
end
