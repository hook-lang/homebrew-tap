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
      sha256 "644b4b87d9c4f3df1a4056dab2662c9e822babd753ac5827eec6d079efa484a6"
    end

    on_arm do
      url "https://github.com/hook-lang/hook/releases/download/0.1.0/hook-0.1.0-macos-arm64.tar.gz"
      sha256 "7a05b685d99af28da670c7b1fa75483d59e24ddb9d8d40481005f72d33c4055c"
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
