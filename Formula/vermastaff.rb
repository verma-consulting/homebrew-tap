class Vermastaff < Formula
  desc "AI workforce operating system for your Mac"
  # Public URL — the GitHub source repo may be private (brew audit --online).
  homepage "https://www.npmjs.com/package/@verma-consulting/vermastaff"
  url "https://registry.npmjs.org/@verma-consulting/vermastaff/-/vermastaff-0.1.3.tgz"
  sha256 "a1f75dd7e527316d358d87c1361d4441b7c7da664bccb54887ef2280de9c2760"
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
