# typed: false
# frozen_string_literal: true
class KubectxEdit < Formula
  desc "Small software utility to efficiently manage multiple kubeconfig contexts"
  homepage "https://github.com/Stenstromen/kubectx-edit"
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.5/kubectx-edit_Darwin_arm64.tar.gz"
      sha256 "5924278c74267b4567386cd5a81af74921cd5ecfa77256f44a4d19ee90e1e72e"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.5/kubectx-edit_Darwin_x86_64.tar.gz"
      sha256 "e2d8a7f1ff89687157818a8e4f7ec662e170ce8c4a75dea61c29641d5d597a8c"

      def install
        bin.install "kubectx-edit"
      end

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.5/kubectx-edit_Linux_arm64.tar.gz"
      sha256 "4de0070d3316cb8ed11eb57b92c3eed5c9b2a91a52ba1ce2147d729bba7d4f60"

      def install
        bin.install "kubectx-edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Stenstromen/kubectx-edit/releases/download/v0.0.5/kubectx-edit_Linux_x86_64.tar.gz"
      sha256 "c455581ef9ce0031dc43f25d28cfb766bd59a2afcfffbf32941d68c4dbbdfc51"

      def install
        bin.install "kubectx-edit"
      end

    end
  end
end
