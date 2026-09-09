class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://shall.sh"
  version "0.1.7"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.7/shall-darwin-arm64"
      sha256 "a16e23dac1711d5af3255d70e15b9042b195ed051d91df5f2109daab6a48fd88"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.7/shall-darwin-x64"
      sha256 "cc67576dd0fc07bfabe04422d728e71cbc20f053ee10c8461748ea9f343c2e6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.7/shall-linux-arm64"
      sha256 "4d586b033828ba7e4553a8758a2989463821678f506f4f1f1e9ba87bdef23ba5"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.7/shall-linux-x64"
      sha256 "46cfbb910eaea823a8a55e957f247bb6b8781be251cdcd712c1d30fd1bd3092a"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
