class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://github.com/Nove-Lab/Shall"
  version "0.1.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.3/shall-darwin-arm64"
      sha256 "1cdbcdaedb847049a94a4200069bf20b492e2d0332365753c98e7770999f3844"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.3/shall-darwin-x64"
      sha256 "79fb743b8381c75bc98cc23842100f60bda1e45489e1538df62a807102d72b9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.3/shall-linux-arm64"
      sha256 "39bb2b781801b67217361c6571f29ac8d3e791a2121b60339a6a0e139912c0c9"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.3/shall-linux-x64"
      sha256 "3a353884c6ae7c01a9236d1335ae3691e10dbe2976740846e5d43ab98e6bfa7e"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
