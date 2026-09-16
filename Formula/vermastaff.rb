class Vermastaff < Formula
  desc "AI workforce operating system for your Mac"
  # Public URL — the GitHub source repo may be private (brew audit --online).
  homepage "https://www.npmjs.com/package/@verma-consulting/vermastaff"
  url "https://registry.npmjs.org/@verma-consulting/vermastaff/-/vermastaff-0.4.0.tgz"
  sha256 "b6e2e8a825670137973529b72f6655c861cf05e52130d4db0cc16cd15f80de43"
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
