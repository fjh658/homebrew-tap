class HungDetect < Formula
  desc "Detect Not Responding macOS processes — same API as Activity Monitor"
  homepage "https://github.com/fjh658/hung_detect"
  license "Apache-2.0"
  version "0.5.2"

  url "https://github.com/fjh658/hung_detect/releases/download/v0.5.2/hung-detect-0.5.2-macos-universal.tar.gz"
  sha256 "dc4ded9aa7d3ef0e1c572125b9b8b740f796398a8c83b6a09241eb0b781503e0"

  depends_on :macos

  def install
    bin.install "hung_detect"
  end

  test do
    assert_match "hung_detect", shell_output("#{bin}/hung_detect --help")
  end
end
