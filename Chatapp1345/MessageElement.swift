//
//  MessageElement.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import Foundation
import FirebaseFirestoreSwift


struct MessageElement: Codable {//jsonからswiftへ
    @DocumentID var id: String?
    var name: String
    var message: String
    var createAt: Date
}
