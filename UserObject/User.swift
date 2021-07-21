//
//  User.swift
//  UserObject
//
//  Created by ANDERSON TAGATA on 19/07/21.
//

import Foundation
 
class User {
    
    private var firstName : String //mutable property must be var
    private let lastName : String
    
    init(){
        self.firstName = "Dear"
        self.lastName = "User"
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    //mutable property
    func set(firstName: String) {
        self.firstName = firstName
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
    
}

//Example of Inheritance
class SpecialUser : User {
    
    //Override Sample
    override func fullName() -> String {
        if(super.fullName() == "Anderson Tagata"){
           return super.fullName() + " [Special]"
        }
        else{
            return super.fullName()
        }
    }
    
}

func makeUserObject(firstName: String, lastName: String) -> (setFirstName: (String) -> Void, fullName: () -> String) {
    
    var _firstName = firstName
    
    return (
        setFirstName : { newFirstName in
        _firstName = newFirstName
    },
        fullName: {
            return _firstName + " " + lastName

    }
    )
}

func makeSpecialUserObject(firstName: String, lastName: String) -> (setFirstName: (String) -> Void, fullName: () -> String) {
    
    var _firstName = firstName
    
    return (
        setFirstName : { newFirstName in
        _firstName = newFirstName
    },
        fullName: {
            return _firstName + " " + lastName + " [SPECIAL]"

    }
    )
}

