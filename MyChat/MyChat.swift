//
//  MyChat.swift
//  MyChat
//
//  Created by Qiscus on 22/11/18.
//

import Foundation
import QiscusCore

@objc public class MyChat : NSObject {
    @objc public static let shared : MyChat = MyChat()
    class var bundle:Bundle{
        get{
            let podBundle = Bundle(for: MyChat.self)
            if let bundleURL = podBundle.url(forResource: "MyChat", withExtension: "bundle") {
                return Bundle(url: bundleURL)!
            }else{
                return podBundle
            }
        }
    }
    
    @objc public static func isLogined() -> Bool {
        return QiscusCore.isLogined
    }
    
    @objc public func setup(withAppId appId:String, userEmail:String, userKey:String, username:String, avatarURL:String? = nil, extras:[String: Any]? = nil) {
        QiscusCore.setup(WithAppID: appId)
        let url = URL(string: avatarURL ?? "http://")
        QiscusCore.loginOrRegister(userID: userEmail, userKey: userKey,username: username, avatarURL: url, extras: extras, onSuccess: { (userModel) in
            // when login success
            print(userModel)
        }) { (error) in
            // when login error
        }
        // enable debug log
        QiscusCore.enableDebugPrint = true
    }
    
    /// Chat with qiscus user id
    ///
    /// - Parameter user: userid
    /// - Returns: return chat viewcontroller
    @objc public func chatWith(user: String) -> UIViewController {
        let target      = ChatViewController()
        target.chatUser = user
    
        return target
    }
    
    
    /// Post Message by room id
    ///
    /// - Parameters:
    ///   - roomID: room id
    ///   - message: message text
    ///   - extras: extra data
    @objc public func postMessage(roomID: String, message: String, extras: String?) {
        let comment         = CommentModel()
        comment.message     = message
        comment.extras      = extras
        comment.type        = "text"
        
        QiscusCore.shared.sendMessage(roomID: roomID, comment: comment, onSuccess: { (results) in
            //
        }) { (error) in
            //
        }
    }
    
    @objc public func clearMessage(roomID: String) {
        QiscusCore.shared.deleteAllMessage(roomID: [roomID]) { (error) in
            if let message = error?.message {
                print("error \(message)")
            }else {
                // success
            }
        }
    }
    
    @objc public func logout() {
        QiscusCore.logout { (error) in
            if let message = error?.message {
                print("error logout \(message)")
            }
        }
    }
}
