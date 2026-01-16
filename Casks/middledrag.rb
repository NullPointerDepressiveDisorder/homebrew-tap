cask "middledrag" do
    version "1.3.8.7"
    sha256 "04df585d0a712fa1979014d4f2ffb86702fdd54736c443e5c47a0303b46ea562"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-1.3.8.7.pkg"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"

    depends_on macos: ">= :ventura"

  pkg "MiddleDrag-1.3.8.7.pkg"
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
