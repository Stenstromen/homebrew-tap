# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.2/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "6e77c7ae6453fae216c2c9165bf458780ed449df24f1e807c40e2d84bbc7f8d2"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.2/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "556a34652ad08e96cfd4ccab4da59c6b5922a61462c727c2b14f08fefdfd29cf"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.2/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "9d46c2247e25c0b19c7883c7269ad725849be0db027d5c5652faea7435d1cd83"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.2/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "f507d7698c08bbd3e738b0f5690621cb29c89623088d17a7365501c01cbbd95c"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
