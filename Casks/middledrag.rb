cask "middledrag" do
    version "1.0.0"
    sha256 "7d40777d47be9bfe0d51f7af91b4d72fff6449e547431cdad29885b8408551c8"

    url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v1.0.0/MiddleDrag-1.0.0.zip"
    name "MiddleDrag"
    desc "Middle-click and middle-drag via three-finger trackpad gestures"
    homepage "https://github.com/NullPointerDepressiveDisorder/MiddleDrag"
    license :public_domain

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