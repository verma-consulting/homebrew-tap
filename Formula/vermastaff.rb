class Vermastaff < Formula
  desc "AI workforce operating system for your Mac"
  # Public URL — the GitHub source repo may be private (brew audit --online).
  homepage "https://www.npmjs.com/package/@verma-consulting/vermastaff"
  url "https://registry.npmjs.org/@verma-consulting/vermastaff/-/vermastaff-0.1.4.tgz"
  sha256 "9735a20fe2a40fcca74f8522d8341540028ca65bc17bba305b173aa9396b911c"
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
