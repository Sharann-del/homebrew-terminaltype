class Monkeytypetui < Formula
  desc "Monkeytype-inspired terminal typing test"
  homepage "https://github.com/sharann-del/monkeytypetui"
  url "https://registry.npmjs.org/monkeytypetui/-/monkeytypetui-1.0.0.tgz"
  sha256 "197005d3362f46a3c18703b6361299177bd150580d89e51a3aac367506613ff4"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/monkeytypetui"
  end

  test do
    system "#{bin}/monkeytypetui", "--help"
  end
end	
