# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.7/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "48492019197ecc8f42c17f45cfb4d79015ce077517ce2942a2f0df1d947b7537"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.7/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "acb5224d67a00b8ad2a13882858d355df62f3538546e6382088b1f9281ea5ff1"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.7/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "c76c2a3550684305bcad61e9fa5c511ed6579b80c71207ac971d15f991959d07"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.7/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "e0e060422a52f5ea91e7bda963c899844045b234ae5da7a676a5db067947013a"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
