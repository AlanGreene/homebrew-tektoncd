class TektoncdDashboard < Formula
  desc "Tekton Dashboard - The web-based UI for interacting with Tekton"
  homepage "https://github.com/tektoncd/dashboard"
  url "https://github.com/alangreene/homebrew-tektoncd/releases/download/v0.43.1-alpha/tekton-dashboard-ui_0.43.1-alpha.tar.gz"
  sha256 "0d207a627c23cda8fbcc6cd0451c2d29d7a6f334d23e5305c87a0b31989838da"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"tkn-dashboard"
  end

  test do
    assert_predicate libexec/"tkn-dashboard", :exist?, "tkn-dashboard must exist"
    assert_predicate libexec/"tkn-dashboard", :executable?, "tkn-dashboard must be executable"
  end
end
