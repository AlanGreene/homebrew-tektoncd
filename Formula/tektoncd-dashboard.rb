class TektoncdDashboard < Formula
  desc "Tekton Dashboard - The web-based UI for interacting with Tekton"
  homepage "https://github.com/tektoncd/dashboard"
  version "0.6-alpha"
  bottle :unneeded

  url "https://github.com/alangreene/homebrew-tektoncd/releases/download/v0.6-alpha/tekton-dashboard-ui_0.6-alpha.tar.gz"
  sha256 "edf0e8fbed1540344f02bc32604849ac204aabe957cad2508e321b7a253cd9c0"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"tkn-dashboard")
  end
end
