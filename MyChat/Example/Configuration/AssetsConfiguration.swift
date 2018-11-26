import UIKit

class AssetsConfiguration: NSObject {
    
    public var emptyChat:UIImage = UIImage(named: "empty-chat", in: MyChat.bundle, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    
    // MARK: - Chat balloon
    static var leftBallonLast:UIImage? = UIImage(named: "text_balloon_last_l", in: MyChat.bundle, compatibleWith: nil)
    static var leftBallonNormal:UIImage? = UIImage(named: "text_balloon_left", in: MyChat.bundle, compatibleWith: nil)
    static var rightBallonLast:UIImage? = UIImage(named: "text_balloon_last_r", in: MyChat.bundle, compatibleWith: nil)
    static var rightBallonNormal:UIImage? = UIImage(named: "text_balloon_right", in: MyChat.bundle, compatibleWith: nil)
    static var backgroundChat:UIImage? = UIImage(named: "chat_bg", in: MyChat.bundle, compatibleWith: nil)
}
