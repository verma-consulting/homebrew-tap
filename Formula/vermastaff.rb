class Vermastaff < Formula
  desc "AI workforce operating system for your Mac"
  # Public URL — the GitHub source repo may be private (brew audit --online).
  homepage "https://www.npmjs.com/package/@verma-consulting/vermastaff"
  url "https://registry.npmjs.org/@verma-consulting/vermastaff/-/vermastaff-0.4.2.tgz"
  sha256 "46ae2bf74669e7315323fc60d915d30b0e60119053e17deb6623f4770a6bba81"
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
