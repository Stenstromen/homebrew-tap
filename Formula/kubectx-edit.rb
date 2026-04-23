# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.0/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "420abfbd51ac51ba52345877912d9089eb9262ab03f22ded57ba780e00ab0b18"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.0/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "78ae320641623047badd776805bc2970a37846ce80db530e3e2e58de42b6ff48"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.0/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "f20b3e0158d90105d3e43c57651880e845023654e4b1cb3944a28e3d0d707979"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.0/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "4a96749aea61f2eda865ed652124d32a726a86f9983d55b534081699d864cd62"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
