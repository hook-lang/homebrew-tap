class Hook < Formula
  desc "The Hook Programming Language"
  homepage "https://github.com/hook-lang/hook"
  url "https://github.com/hook-lang/hook/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "00007c84802eeb5b8bb04d2d5ee0848a950984c7c3110382cf033c5346d9191c"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hook-lang/hook/releases/download/0.1.0/hook-0.1.0-macos-x64.tar.gz"
      sha256 "627a73e1ffbe77d5f8fb1a55abcaf7010bbc3d1787b4d6f52f08e1e0a3cb05ea"
    end

    on_arm do
      url "https://github.com/hook-lang/hook/releases/download/0.1.0/hook-0.1.0-macos-arm64.tar.gz"
      sha256 "b1ee0ce0e46a19cf7c77bc47c66c419560a570deda5e906400bd9a13bf81fb8b"
    end
  end

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
