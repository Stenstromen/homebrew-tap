# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.6/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "5078903dfc13a4d2d93dd60b4586b20cb06b0b4e9493cb0267948fc83d9edc0c"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.6/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "e56ae95c2c57fb1b3c755eb1c8c08b896a98bdc138be5e4d5406c5e96df7480b"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.6/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "d13f5277900dfffbcc8bae0938d410c453ec22e0aa9ffc22d59878c11314b1cf"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.6/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "058fd212dabf6fd10edbe820432dbffe6b7e426a87c01717daaafdc9011093a5"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
