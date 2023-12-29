# typed: false
# frozen_string_literal: true
class Vaultctx < Formula
  desc "Context switching for Hashicorp Vault with support for multiple vaults and namespaces"
  homepage "https://github.com/Stenstromen/vaultctx"
  version "v1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.0/vaultctx_Darwin_arm64.tar.gz"
      sha256 "6f1f1d72e7cffd759f0c52d0482da8c95ea322434375d614db8be71cf0e21d42"

      def install
        bin.install "vaultctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.0/vaultctx_Darwin_x86_64.tar.gz"
      sha256 "c22ef372e2cff8b54d094134bccc90af33dd3aae247f7d9d33ac9ed5c5b8411e"

      def install
        bin.install "vaultctx"
      end

      test do
        assert_match "Usage:", shell_output("#{bin}/vaultctx -h 2>&1")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.0/vaultctx_Linux_arm64.tar.gz"
      sha256 "c6eaa2a5aabfa980909ad20549e0bf5cd681a8a698c62dbd126eb73be5bcc363"

      def install
        bin.install "vaultctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.0/vaultctx_Linux_x86_64.tar.gz"
      sha256 "3ba2ec028f0f52edddf371f858c87c24ebdff02711da76683fda85ec2e81d29f"

      def install
        bin.install "vaultctx"
      end

      test do
        assert_match "Usage:", shell_output("#{bin}/vaultctx -h 2>&1")
      end
    end
  end
end
