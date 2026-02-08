class Terminaltype < Formula
  desc "Terminal-based typing test"
  homepage "https://github.com/sharann-del/terminaltype"
  url "https://registry.npmjs.org/terminaltype/-/terminaltype-4.0.0.tgz"
  sha256 "288b4a08cba1df9e06aac816f4ee7d9d292cca881b6e9e75641fe035a10ac6aa"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"index.js" => "terminaltype"
  end

  test do
    system "#{bin}/terminaltype", "--help"
  end
end
