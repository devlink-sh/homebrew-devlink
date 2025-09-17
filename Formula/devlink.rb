class Devlink < Formula
  desc "DevLink CLI for streamlined development"
  homepage "http://localhost:8080"
  url "http://localhost:8080/downloads/devlink", using: :curl
  version "1.0.0" # Update this to the actual version
  sha256 "your_sha256_checksum_here" # Replace with the actual SHA256 checksum of the binary

  def install
    bin.install "devlink"
  end

  test do
    system "#{bin}/devlink", "--help"
  end
end