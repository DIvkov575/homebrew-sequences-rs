class SequencesRs < Formula
  desc "CLI for training number sequence recognition (Optiver/Flow Traders prep)"
  homepage "https://github.com/DIvkov575/sequences-rs"
  url "https://github.com/DIvkov575/sequences-rs/archive/refs/tags/0.2.1.tar.gz"
  sha256 "9bbdf70bda359aecf10214312b138bd0f39009c841fd3d4696c507b0ef59961c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
    bin.install_symlink bin/"sequences-rs" => "sequences"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sequences-rs --version")
  end
end
