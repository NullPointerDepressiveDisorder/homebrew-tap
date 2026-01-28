cask "middledrag" do
    version "1.4.1"
    sha256 "9fff486edb99d65b82042bc6dcf20fce3d5ebf436bc6b2e4af5b7afadc23f368"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-1.4.1.pkg"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"

    depends_on macos: ">= :ventura"

  pkg "MiddleDrag-1.4.1.pkg"
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
