# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "896147cb63fa879e0a5208caec8613ed0527386f277d1cc590fabded8acd0536"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "8740383b80c39cd71160a35fd6ae8b0146f1153ebf0be49360bd6f19705e684d"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "92392aaeeaaa0d7c2e8f05ff52554288bd0b2eb568e7d7a47a9ca752002860a8"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "1be3ebc30b9208cf5192cc49296563c8cf871c740934dcf654bf6e057df5af45"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
