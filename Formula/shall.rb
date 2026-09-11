class Shall < Formula
  desc "Spec as the control plane for your agents"
  homepage "https://shall.sh"
  version "0.1.8"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.8/shall-darwin-arm64"
      sha256 "fea295cec2aa94336174dfa7adc099e0c724500645a8b6a1ba714b4767c7b685"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.8/shall-darwin-x64"
      sha256 "8c2e2f6103f4e2860eb4e3990e6b3f7789732390828588f0a97a8e64f35e9893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.8/shall-linux-arm64"
      sha256 "1fd905bdf0174e5548afa89c131895785a916e3ac24651b27f9918d8c3ce7ef6"
    end
    on_intel do
      url "https://github.com/Nove-Lab/Shall/releases/download/v0.1.8/shall-linux-x64"
      sha256 "22cd8091daf3464300ee35b2d6f4f0057f9da281956474915cb99ae388b7e4bb"
    end
  end

  def install
    bin.install Dir["shall-*"].first => "shall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/shall --version").strip
  end
end
