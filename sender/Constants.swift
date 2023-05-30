//
//  Constant.swift
//  sender
//
//  Created by Тимур on 26.03.2023.
//

import Foundation

struct K {
    static let appName = "SENDER"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
