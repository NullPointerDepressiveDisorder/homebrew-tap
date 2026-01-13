cask "middledrag" do
    version "1.3.8.5"
    sha256 "263325dbc757373e65cd6bacb46a1fd72644f38003ada2a7a1417b00d7d923c9"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-1.3.8.5.pkg"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"

    depends_on macos: ">= :ventura"

  pkg "MiddleDrag-1.3.8.5.pkg"
  uninstall pkgutil: "app.middledrag.MiddleDrag"

    postflight do
        ohai "MiddleDrag requires Accessibility permissions to function."
        puts "Please grant Accessibility permissions in System Settings -> Privacy & Security -> Accessibility."
    end

    zap trash: [
        "~/Library/Application Support/MiddleDrag",
        "~/Library/Preferences/com.middledrag.MiddleDrag.plist",
    ]
end
