# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.2/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "e832dcdf7142958b3cfe2ebaa61ca5e1bd921d10b72ead29bc7fc008178b9ab7"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.2/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "2543564cc817699d9bd4931f3f014f935bb5780d5b61ff83f1133287e108ed24"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.2/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "9ab4c2c5ec2e81350fbbf9e3ce1068dd21485b2b5ea1bda482d4e8c44703f445"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.1.2/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "e1bbba8eb3566679461c38d80eb2b76e1a3ef999f167d7daa37bdcd755cc43a6"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
