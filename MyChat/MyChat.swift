//
//  MyChat.swift
//  MyChat
//
//  Created by Qiscus on 22/11/18.
//

import Foundation

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
    
    @objc public func chatWith(user: String) -> UIViewController {
        let target      = ChatViewController()
        target.chatUser = user
    
        return target
    }
}
