class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://github.com/Nove-Lab/Shall"
  version "0.1.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.2/shall-darwin-arm64"
      sha256 "9244b47a676b06dbb9e43b32c7c192f21f32dfb3c9ee0bf671fd44253d7a209f"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.2/shall-darwin-x64"
      sha256 "eb526c0e789124c50f767b02b733708943f81973aad3db155f8a61ccaadc034b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.2/shall-linux-arm64"
      sha256 "504e0089b50ca24308f2a25f9974db204380da93f20eb2e2d789ea9d67f6d4a0"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.2/shall-linux-x64"
      sha256 "42703f2a8e19a77b7498e975819ca30b7c7f0d44ddbd059600cc48f8938305f5"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
