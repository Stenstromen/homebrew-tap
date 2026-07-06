# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.1/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "d32b225d63e25b606ba7b4d7e5d898a6b3e6cb361b97de0a12004cdba8b6d863"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.1/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "f395854d9b4e91a37148ab4d32e909a6188d35dcc8129e4e74de8777b00e3344"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.1/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "1c4decc740214046b1a4b39714f3331674992d73157535688e054bba973cdd44"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.1/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "a4b6fa6c82d8db2acdf559bb0053079bdc90fa5cebca3369d435583f053aa8b0"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
