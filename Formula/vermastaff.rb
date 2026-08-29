class Vermastaff < Formula
  desc "AI workforce operating system for your Mac"
  # Public URL — the GitHub source repo may be private (brew audit --online).
  homepage "https://www.npmjs.com/package/@verma-consulting/vermastaff"
  url "https://registry.npmjs.org/@verma-consulting/vermastaff/-/vermastaff-0.1.6.tgz"
  sha256 "6ada63df50fc78cd982317c5af8d407a6c4055bdecd9b69d641667482f6fcf55"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vermastaff --version")
    system bin/"vermastaff", "doctor", "--json"
  end
end
