cask "middledrag" do
    version "1.3.8.3"
    sha256 "5d8cc073bf99c09cc47c072217c2d2ae78ffdafaf76c5093cebc105b3ebacff2"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-1.3.8.3.pkg"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"

    depends_on macos: ">= :ventura"

  pkg "MiddleDrag-1.3.8.3.pkg"
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
