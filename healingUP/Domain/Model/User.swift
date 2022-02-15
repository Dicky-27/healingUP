//
//  User.swift
//  healingUP
//
//  Created by Dicky Buwono on 15/02/22.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable {
  @DocumentID var id: String!
  var name: String
  var email: String
  var password: String
  var parrentEmail: String
  var diaryPin: Int?
}
