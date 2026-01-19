# Homebrew formula for Ravi CLI
#
# This file should be placed in your homebrew tap repository:
#   homebrew-ravi/Formula/ravi.rb
#
# Users install with:
#   brew tap ravi-technologies/ravi
#   brew install ravi
#
# IMPORTANT: Binaries are hosted in a separate PUBLIC release repository
# (ravi-technologies/ravi-releases) to allow Homebrew downloads without source access.
# The source code remains in a private repository.

class Ravi < Formula
  desc "AI-powered code review CLI"
  homepage "https://github.com/ravi-technologies/ravi"
  version "0.1.0"
  license "Proprietary"

  # Binaries are downloaded from the public release repository
  # This allows users to install via Homebrew without access to the private source repo
  on_macos do
    on_arm do
      url "https://github.com/ravi-technologies/ravi-releases/releases/download/v#{version}/ravi-#{version}-macos-arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_ARM64"
    end

    on_intel do
      url "https://github.com/ravi-technologies/ravi-releases/releases/download/v#{version}/ravi-#{version}-macos-x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_X86_64"
    end
  end

  def install
    bin.install "ravi"
  end

  def caveats
    <<~EOS
      Ravi requires an OpenAI API key to function.

      Set your API key:
        export OPENAI_API_KEY="your-api-key"

      Add this to your shell profile (~/.zshrc or ~/.bashrc) for persistence.

      Get started:
        ravi review              # Review latest commit
        ravi review --staged     # Review staged changes
        ravi review --help       # See all options
    EOS
  end

  test do
    assert_match "ravi #{version}", shell_output("#{bin}/ravi version")
  end
end
