cask "middledrag" do
    version "1.2.0"
    sha256 "164f0c76afcb03cdc5e1c424a9a7b452c5945222de9cba6ee56ba1a91dbfd8d1"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-#{version}.zip"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"

    depends_on macos: ">= :ventura"

    app "MiddleDrag.app"

    postflight do
        ohai "MiddleDrag requires Accessibility permissions to function."
        puts "Please grant Accessibility permissions in System Settings -> Privacy & Security -> Accessibility."
    end

    zap trash: [
        "~/Library/Application Support/MiddleDrag",
        "~/Library/Preferences/com.middledrag.MiddleDrag.plist",
    ]
end