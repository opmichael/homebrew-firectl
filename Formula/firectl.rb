class Firectl < Formula
    desc "CLI tool for managing Fireworks deployments"
    homepage "https://readme.fireworks.ai/reference/firectl"
    url "https://storage.googleapis.com/fireworks-public/firectl/stable/linux-amd64.gz"
    sha256 "70fae24cb9d0ba2342bbf3a9edd3164c4822e1471aa0b0024a6117df05aa2faa" # Linux
  
    if OS.mac? && Hardware::CPU.intel?
      url "https://storage.googleapis.com/fireworks-public/firectl/stable/darwin-amd64.gz"
      sha256 "62ee4bf3624dc37fb331281194d5e0073cfb767237082b0acfa0bf241e8bbbe1" # Darwin AMD64
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://storage.googleapis.com/fireworks-public/firectl/stable/darwin-arm64.gz"
      sha256 "bedbbef72c17f0706ab2b1125f015edb067c82b3889e2d00cca4a8a38e11af5e" # Darwin ARM64
    end
  
    def install
      system "sudo mv firectl /usr/local/bin/firectl"
      system "chown root: /usr/local/bin/firectl"
    end

    test do
        system "firectl", "version"
    end
  end
  