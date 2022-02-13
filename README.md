
# Homebrew Tap for Hook

This repository is the [Homebrew](https://brew.sh) tap that allows users to install [Hook](https://github.com/hook-lang/hook) easily on `macOS` and `Linux` systems.

## What is Hook?

Hook is an imperative, cross-platform, dynamically typed scripting language that utilizes a mutable value semantics approach.

The programming language is open-source and available on GitHub. You can access it by visiting the [repository](https://github.com/hook-lang/hook).

> **Note**: Hook is currently in the early stages of development and should not be used in production environments at this time.

## Installation

Once you have Homebrew installed, you can install Hook by running the following command in your terminal:

```
brew tap hook-lang/hook
brew install hook
```

> **Note**: Follow the instructions provided by Homebrew to add the `HOOK_HOME` environment variable to your system.

Now, you can verify the installation:

```
hook --version
```

By using the Homebrew tap for Hook, you can easily keep your installation of Hook up-to-date by running `brew upgrade hook`.

## License

This project is licensed under the [MIT](https://choosealicense.com/licenses/mit) license. For more information, please refer to the [LICENSE](https://github.com/hook-lang/homebrew-tap/blob/main/LICENSE) file. 
