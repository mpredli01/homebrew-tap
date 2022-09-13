# Generated with JReleaser 1.2.0 at 2022-09-13T19:51:31.132151-04:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/mpredli01/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "d1ffd2ec50b5fab344cbd12bf0f5b891e1a62fb629413d2dfa0709b3b7be024f"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
