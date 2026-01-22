cask "middledrag" do
    version "1.3.8.9"
    sha256 "78de1de3cf09ba1c255b61d3261af1599b0b6648df518e04bc6eeb1a7d116767"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-1.3.8.9.pkg"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"

    depends_on macos: ">= :ventura"

  pkg "MiddleDrag-1.3.8.9.pkg"
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
