class SequencesRs < Formula
  desc "CLI for training number sequence recognition (Optiver/Flow Traders prep)"
  homepage "https://github.com/DIvkov575/sequences-rs"
  url "https://github.com/DIvkov575/sequences-rs/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "e55a07e43210b20644e95b7d330f5b8571420e1804f7207ba4e12e2aa980f1e3"
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
