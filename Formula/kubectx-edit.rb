# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.3/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "fb6972f981987c5804ff1da8ae580f01ac3df4f5bdd4fe782c86f31a1577033d"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.3/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "77bbf1dfb61dd11dd714eb2fde3038e790bbd553ec9aee176d745ca40ff4bfaa"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.3/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "ad91c073bb8aacbe554ec97a319c40b4553c07ab6f108c36b1d7c76ddce40fda"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.3/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "7d92f63688c7432d839cdbe96806e25c7c3714735d68254f31221d874f55838d"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
