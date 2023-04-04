class Dockerctx < Formula
  desc "Rewrite of ahmetb's kubectx utility. https://github.com/ahmetb/kubectx. For use with Docker Context"
  homepage "https://github.com/Stenstromen/dockerctx"
  url "https://github.com/Stenstromen/dockerctx/releases/download/v1.0.0/dockerctx"
  sha256 "568f03b56a30d6ac08970fef6ff51b14ff18908da9443e18adbc1b17ed40ddb2"

  def install
    bin.install "dockerctx"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/dockerctx -h 2>&1")
  end
end
