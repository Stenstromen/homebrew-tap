# typed: false
# frozen_string_literal: true
class KubeCTX-Edit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "cfe61cf16329017a07c9beb4de77bc820d7479c91e6a6e3d8919058d69c897ca"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "1f14a37d33c14e74f6ea8e42f94533b668ea504fcfad9ce4cdd9f80646802577"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "c1302d181cba0d57c7069046e1ae25615cc44a75e5397278e0eeb711f280ed02"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.0/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "839c08f19a5f92a28c364cef5e1736893348cd3cd30f19d86ad96b6b8d6d2241"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
