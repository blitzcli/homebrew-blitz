class Blitz < Formula
  desc "AI-powered developer onboarding CLI. Talk to your codebase."
  homepage "https://blitzcli.com"
  url "https://registry.npmjs.org/@blitzcli/cli/-/cli-0.1.0.tgz"
  sha256 "3acefac554fcbe8ed6a73506b92565c7e46b54941a470885f3b04e3004f203dc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "BLITZ", shell_output("#{bin}/blitz --help")
  end
end
