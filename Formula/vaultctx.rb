# typed: false
# frozen_string_literal: true
class Vaultctx < Formula
  desc "Context switching for Hashicorp Vault with support for multiple vaults and namespaces"
  homepage "https://github.com/Stenstromen/vaultctx"
  version "v1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.1/vaultctx_Darwin_arm64.tar.gz"
      sha256 "86a08ffe3b88c814d75d8b0d08448404a03f2127a0ac7ba2c00db92a1855c054"

      def install
        bin.install "vaultctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.1/vaultctx_Darwin_x86_64.tar.gz"
      sha256 "0749072b668d12abcfe7e0f410d6715b6f867d308d16c2d8d93868e6d13ee9ed"

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
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.1/vaultctx_Linux_arm64.tar.gz"
      sha256 "7285bf86928e543b9662f772122da680cbff6e19f405ed4b6328fc37a67b7a9f"

      def install
        bin.install "vaultctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/vaultctx/releases/download/v1.1/vaultctx_Linux_x86_64.tar.gz"
      sha256 "1b1acc72f1a341ca473674dc1c15b9d26d36e11ab8795d8b44fd391ba35d7f76"

      def install
        bin.install "vaultctx"
      end

      test do
        assert_match "Usage:", shell_output("#{bin}/vaultctx -h 2>&1")
      end
    end
  end
end
