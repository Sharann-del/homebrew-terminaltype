class Terminaltype < Formula
  desc "Terminal-based typing test"
  homepage "https://github.com/sharann-del/terminaltype"
  url "https://registry.npmjs.org/terminaltype/-/terminaltype-4.1.0.tgz"
  sha256 "e54dfa743cb6677af54fbd48edb63813014a53c22ced271d45dfd4791cbadc46"
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

