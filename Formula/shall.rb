class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://github.com/Nove-Lab/Shall"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.0/shall-darwin-arm64"
      sha256 "6021e9648916ee26f76cff512e7f9dbad4db727e271b60fa795cc3d3f0271588"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.0/shall-darwin-x64"
      sha256 "5de15c165960bc055d02b91fd1e9ce2f7a9c5faa548a387eb47ba5dfc043c054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.0/shall-linux-arm64"
      sha256 "745bff0b9331ac0ba2b6b73e5bd8a592dfe977f89f52b0f7788ca9346fe876a0"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.0/shall-linux-x64"
      sha256 "059de359f12c3bcad4972993c4f1c643e3bf367bb98eaeadc2923e9c95ad8861"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
