class Hook < Formula
  desc "The Hook Programming Language"
  homepage "https://github.com/hook-lang/hook"
  url "https://github.com/hook-lang/hook/releases/download/0.1.0/hook-0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "427dc4bbe2691cf7d0f518b4d66887e3519b543f50403b78dd317a333c162915"
  license "MIT"

  def install
    bin.install "bin/hook"
    include.install Dir["include/*"]

    lib.install Dir["lib/libhook.*"]

    Dir["lib/*_mod.*"].each { |f| FileUtils.cp(f, lib) }
  
    doc.install Dir["docs/*"]
    share.install "examples"
  end

  test do
    system bin/"hook", "--version"
  end

  def caveats
    <<~EOS
      ---
      To use the Hook programming language, set the HOOK_HOME environment variable:

        export HOOK_HOME=#{prefix}

      Add this line to your shell configuration file (like ~/.bash_profile or ~/.zshrc) to set it permanently.

      Enjoy coding with Hook!
      ---
    EOS
  end
end
