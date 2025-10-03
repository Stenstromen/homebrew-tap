# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.4/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "5c0edea18d545b8da1c31368fea505af3d9401d5dc1f5e498f30bb94bc9c3503"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.4/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "720c6cf0873f0338ba5397e502c2dee945f39eacd667b1f9c9fbc2c776e43cee"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.4/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "0b79f75290b620470a25ece7e306c808d0a31a918c9d8f4928d14ddffde970ab"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.4/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "52dd8d396b65851b5ca4477a94817b3e2c41d439ca607d22e2aef88e7c61f507"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
