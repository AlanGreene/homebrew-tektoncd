class TektoncdDashboard < Formula
  desc "Tekton Dashboard - The web-based UI for interacting with Tekton"
  homepage "https://github.com/tektoncd/dashboard"
  version "0.33.0-alpha"

  url "https://github.com/alangreene/homebrew-tektoncd/releases/download/v0.33.0-alpha/tekton-dashboard-ui_0.33.0-alpha.tar.gz"
  sha256 "ca566ec4d9581a4bfb02b7312a9aa8aa9348c2196d97f1cb1d52e7322dc2cf32"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"tkn-dashboard")
  end
end
