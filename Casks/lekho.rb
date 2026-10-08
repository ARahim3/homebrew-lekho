cask "lekho" do
  version "0.4.2"
  sha256 "64d48612bdc6fdb29dcb10737f55f95683673534881fea4c61fe1fec8a64def6"

  url "https://github.com/ARahim3/Lekho/releases/download/v#{version}/Lekho-#{version}.dmg"
  name "Lekho"
  desc "Avro Phonetic Bengali input method (IME)"
  homepage "https://github.com/ARahim3/Lekho"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  pkg "Install Lekho.pkg"

  uninstall quit:    "com.lekho.inputmethod.Lekho",
            pkgutil: "com.lekho.inputmethod.Lekho",
            delete:  [
              "/Applications/Lekho.app",
              "~/Library/Input Methods/Lekho.app",
            ]

  zap trash: [
    "~/Library/Application Support/Lekho",
    "~/Library/Preferences/com.lekho.inputmethod.Lekho.plist",
    "~/Library/Saved Application State/com.lekho.inputmethod.Lekho.savedState",
  ]

  caveats <<~EOS
    Lekho is a macOS Input Method. To enable it:
      1. Open System Settings → Keyboard → Input Sources → Edit → +
      2. Search "Lekho" under Bengali → Add
      3. Switch input methods with the Globe key or Ctrl+Space

    On a fresh install, if Lekho doesn't appear in the input source list,
    log out and back in once.

    After `brew upgrade`, Lekho may disappear from the input menu, because
    Homebrew removes the old app a few seconds before installing the new
    one. To bring it back, remove Lekho from Input Sources and add it
    again. Your settings and learned words are kept.
  EOS
end
