# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gospfflare < Formula
  desc "Go binary for updating TLSA DANE record on cloudflare from x509 Certificate"
  homepage "https://github.com/Stenstromen/gospfflare"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/gospfflare/releases/download/v1.0.3/gospfflare_Darwin_arm64.tar.gz"
      sha256 "46c50629b3d7f6a4d1be1aa3562236b8e8b8d784d32ae27a33bd12cc1da65f80"

      def install
        bin.install "gospfflare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/gospfflare/releases/download/v1.0.3/gospfflare_Darwin_x86_64.tar.gz"
      sha256 "067887ba957156ad69436e9f738450797b81aff9d3898b293320ac8be60f60c6"

      def install
        bin.install "gospfflare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/gospfflare/releases/download/v1.0.3/gospfflare_Linux_arm64.tar.gz"
      sha256 "5e4b3837cabea8903805089b62c140e6979a13f895931b0bd29b566d4c8c195e"

      def install
        bin.install "gospfflare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/gospfflare/releases/download/v1.0.3/gospfflare_Linux_x86_64.tar.gz"
      sha256 "9e358232db02bf36ede455a739b736ba24a36d446a63071dbfc5eeeb23279ad6"

      def install
        bin.install "gospfflare"
      end
    end
  end
end
