class Flarecert < Formula
  desc "Automatic SSL certificate generation using Let's Encrypt with Cloudflare DNS-01 challenge"
  homepage "https://github.com/bariiss/flarecert"
  url "https://github.com/bariiss/flarecert/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "aa366516a29a2c791f251242a8ada323f5f9bf5a63e5e6fa7dea331b166d818a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"flarecert", "main.go"

    # Install shell completions
    generate_completions_from_executable(bin/"flarecert", "completion")
  end

  test do
    # Test version command
    assert_match "FlareCert v", shell_output("#{bin}/flarecert version")
    
    # Test help command
    assert_match "FlareCert", shell_output("#{bin}/flarecert --help")
  end
end
