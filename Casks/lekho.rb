cask "lekho" do
  version "0.2.4"
  sha256 "604d4461e7948d91f6a7ea9dfa1e10b8aa08f780c596ac6860e65cb938cca4d3"

  url "https://github.com/ARahim3/Lekho/releases/download/v#{version}/Lekho-#{version}.dmg"
  name "Lekho"
  desc "Avro Phonetic Bengali input method (IME)"
  homepage "https://github.com/ARahim3/Lekho"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

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

    Lekho is not signed with an Apple Developer ID, so on first launch
    you may need to allow it in System Settings → Privacy & Security
    → "Allow Anyway".

    On a fresh install, if Lekho doesn't appear in the input source list,
    log out and back in once.
  EOS
end
