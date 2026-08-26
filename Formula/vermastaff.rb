class Vermastaff < Formula
  desc "AI workforce operating system for your Mac"
  homepage "https://github.com/verma-consulting/vermastaff"
  url "https://registry.npmjs.org/@verma-consulting/vermastaff/-/vermastaff-0.1.0.tgz"
  sha256 "b267b14eb7591e41b1af25e116d5360aa8364321cb406afaf6f343944d583c73"
  license :cannot_represent
  version "0.1.0"

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
