class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://github.com/Nove-Lab/Shall"
  version "0.1.4"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.4/shall-darwin-arm64"
      sha256 "5c3220012f912d7e0a0702af1967cbbf30bdbf22208fa33566857d9489e4897f"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.4/shall-darwin-x64"
      sha256 "c6c4b22694c144b6f4439ee5611ab8cf5103b4981698104ad6c089f3bb3a4d26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.4/shall-linux-arm64"
      sha256 "29f29e2ae1aada3fd0c451d1a78ec0d3bcb4f6b1eab5a6fdf13e137ded8120ab"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.4/shall-linux-x64"
      sha256 "3727017e1656fa3756b5e496f75238058c015a0f8d75e6ca11f2c1349bfb06ee"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
