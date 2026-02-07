class Monkeytypetui < Formula
  desc "Monkeytype-inspired terminal typing test"
  homepage "https://github.com/sharann-del/monkeytypetui"
  url "https://registry.npmjs.org/monkeytypetui/-/monkeytypetui-2.0.0.tgz"
  sha256 "e492847093067696583355c0c59ea51c3acf33d27ac7993d42cf47f2b7a706a4"
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
