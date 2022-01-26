class TektoncdDashboard < Formula
  desc "Tekton Dashboard - The web-based UI for interacting with Tekton"
  homepage "https://github.com/tektoncd/dashboard"
  version "0.24.1-alpha"

  url "https://github.com/alangreene/homebrew-tektoncd/releases/download/v0.24.1-alpha/tekton-dashboard-ui_0.24.1-alpha.tar.gz"
  sha256 "eb531ade184885b82e7a4feb20bfd33a5894fc83b1542b746a887f48398f0e07"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"tkn-dashboard")
  end
end
