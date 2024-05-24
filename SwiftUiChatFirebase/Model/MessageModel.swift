//
//  MessageModel.swift
//  SwiftUiChatFirebase
//
//  Created by Ran Ra on 15/11/1445 AH.
//

import Foundation

struct MessageModel :Identifiable , Codable{
    var id: String
    var text: String
    var recived : Bool
    var timestemp : Date
}
