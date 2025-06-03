# typed: false
# frozen_string_literal: true
class KubeCTX-Edit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.0-test.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0-test.3/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "d2710e81f8fb10e084a0216f1144817f37a83530b530399264f59f6b0ea82795"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0-test.3/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "85516aec8170c12b9d8aeadec9b78a65f5995eb9b9aaf18d800d1bc8a67e46d0"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0-test.3/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "62c9645c76e4c00792e2e319a0127ffa18126d49c7229df96bafba9a8216de34"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0-test.3/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "7ffab67d28d65ce883789601cfafc8e36bc0f34e03f5984b295b65a2d2cfe2ab"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
