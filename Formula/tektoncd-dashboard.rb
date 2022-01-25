class TektoncdDashboard < Formula
  desc "Tekton Dashboard - The web-based UI for interacting with Tekton"
  homepage "https://github.com/tektoncd/dashboard"
  version "0.24-alpha"

  url "https://github.com/alangreene/homebrew-tektoncd/releases/download/v0.24-alpha/tekton-dashboard-ui_0.24-alpha.tar.gz"
  sha256 "bec18a835f44d02f69f1650700354c69b13edce15dd05072b5328f11180aba4f"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"tkn-dashboard")
  end
end
