# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.8/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "404713b153ff42ece7e9abcfdc0b4509271a9fce4309b1a99dab11e487963602"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.8/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "70c72701eb418a868049209f7261042d35857dbf7e9a2c3d561acd096ffe829e"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.8/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "60ccfcab454b5c3ab6ac5c5141ce05f36b99593fb1c3f7d64ce10b94b0954995"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.8/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "63bd8c912ddf505e6e63c854b1fc22cf40ba423e9d98789315f949507e44d879"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
