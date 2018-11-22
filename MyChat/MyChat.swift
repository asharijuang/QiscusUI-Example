//
//  MyChat.swift
//  MyChat
//
//  Created by Qiscus on 22/11/18.
//

import Foundation

public class MyChat {
    public static let shared : MyChat = MyChat()
    
    
    public func chatWith(user: String) -> UIViewController {
        
        return ChatViewController()
    }
}
