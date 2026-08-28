class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://github.com/Nove-Lab/Shall"
  version "0.1.5"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.5/shall-darwin-arm64"
      sha256 "5d3727ab163ed25292be89e4235d812e1ea996cdc18b742b8855fefdcb249dbc"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.5/shall-darwin-x64"
      sha256 "fe200d272ff444ee2d56b9d1617761375daf4200f7915fbba357f28c96109ac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.5/shall-linux-arm64"
      sha256 "1cf096898d2a22e235273ae0ce0392cebde4555b07a8fb4789024f3a60947d81"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.5/shall-linux-x64"
      sha256 "98ea661142a0c93142a84a3bc235a9badc5ab0476c2cd835f1d1ed881ed8766a"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
