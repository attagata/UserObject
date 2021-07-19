//
//  User.swift
//  UserObject
//
//  Created by ANDERSON TAGATA on 19/07/21.
//

import Foundation
 
class User {
    
    private let firstName : String
    private let lastName : String
    
    init(){
        self.firstName = "Dear"
        self.lastName = "User"
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
    
}
