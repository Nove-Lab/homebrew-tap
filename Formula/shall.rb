class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://shall.sh"
  version "0.1.6"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.6/shall-darwin-arm64"
      sha256 "0ee8ca9d3ca4c86b4c19754fa932db418d189b8198949ec2011524915ebf709e"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.6/shall-darwin-x64"
      sha256 "5bdfb908b99bd0ffb72da514bdc00f96c5e4302b069e06548bfc0d470e3017a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.6/shall-linux-arm64"
      sha256 "1debb2d5aad53756ef46a199b69fe57c88b364a93dd89d9770a62c828a69f249"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.6/shall-linux-x64"
      sha256 "c34cf727ec4caded6cdac5486ff80433547de60ecef292857087bf6f6b2eafd5"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
