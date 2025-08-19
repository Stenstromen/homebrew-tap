# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.1/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "c7cbf3d48d96a0eedf3c1ad42f1ccb372311e8f0eb7afcb3c6dc342cd6ee89da"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.1/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "3df68879f3ddc6cdab47d8cdd1a4ae878dc9dc41c780b95789b325ac17484d23"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.1/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "654ea80a8377cea4566730e0adeca3fd36d913a1b3eacb36fe6c0344be1f787e"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.1/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "0409e1a29750809f1116ae08dae4dbf9594f320dfe94b6231713a4d9b89955b3"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
