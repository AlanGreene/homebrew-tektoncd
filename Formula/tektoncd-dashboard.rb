class TektoncdDashboard < Formula
  desc "Tekton Dashboard - The web-based UI for interacting with Tekton"
  homepage "https://github.com/tektoncd/dashboard"
  url "https://github.com/alangreene/homebrew-tektoncd/releases/download/v0.33.0-alpha/tekton-dashboard-ui_0.33.0-alpha.tar.gz"
  sha256 "a59bbdd83a6f41aa725d43302b2b7fbf43f5271528b4d56cb5e8f678b61bdbf8"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"tkn-dashboard"
  end

  test do
    assert_predicate libexec/"tkn-dashboard", :exist?, "tkn-dashboard must exist"
    assert_predicate libexec/"tkn-dashboard", :executable?, "tkn-dashboard must be executable"
  end
end
