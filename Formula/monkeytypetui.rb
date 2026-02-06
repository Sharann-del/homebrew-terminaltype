class Monkeytypetui < Formula
  desc "Monkeytype-inspired terminal typing test"
  homepage "https://github.com/sharann-del/monkeytypetui"
  url "https://registry.npmjs.org/monkeytypetui/-/monkeytypetui-1.1.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"index.js" => "monkeytypetui"
  end

  test do
    system "#{bin}/monkeytypetui", "--help"
  end
end	
