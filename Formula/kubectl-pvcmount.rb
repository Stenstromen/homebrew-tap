# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlPvcmount < Formula
  desc "Go binary for temporary mounting of PVCs"
  homepage "https://github.com/Stenstromen/kubectl-pvcmount"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/Stenstromen/kubectl-pvcmount/releases/download/v1.0.0/kubectl-pvcmount_Darwin_x86_64.tar.gz"
      sha256 "30a280d76193c3d84e69ec83032648461d71e8ff01dd55e2775c64cf6b7ddcd9"

      def install
        bin.install "kubectl-pvcmount"
      end
    end
    on_arm do
      url "https://github.com/Stenstromen/kubectl-pvcmount/releases/download/v1.0.0/kubectl-pvcmount_Darwin_arm64.tar.gz"
      sha256 "0a321e38407cad80316eecf7736b20505970637eddf704ca70b8f90c964c0ed7"

      def install
        bin.install "kubectl-pvcmount"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Stenstromen/kubectl-pvcmount/releases/download/v1.0.0/kubectl-pvcmount_Linux_x86_64.tar.gz"
        sha256 "906ac87e3fb8b77314b2da6b201886ebaf0619bb8008d5bc7a136f78ed0cfa6f"

        def install
          bin.install "kubectl-pvcmount"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Stenstromen/kubectl-pvcmount/releases/download/v1.0.0/kubectl-pvcmount_Linux_arm64.tar.gz"
        sha256 "6a0431ef35dfeee699e8e1747524514fc12940de72e095f6cf3d0833df74dfdb"

        def install
          bin.install "kubectl-pvcmount"
        end
      end
    end
  end
end
