//
//  UserWithoutClass.swift
//  UserWithoutClassObject
//
//  Created by ANDERSON TAGATA on 19/07/21.
//

import Foundation

 // Use of type Alias instead class
typealias UserWithoutClass = (setFirstName: (String) -> Void, fullName: () -> String)

func makeUserObjectWithoutClass(firstName: String, lastName: String) -> UserWithoutClass {
    
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

typealias SpecialUserWithoutClass = (setFirstName: (String) -> Void, fullName: () -> String)

func makeSpecialUserObjectWithoutClass( firstName: String, lastName: String) -> SpecialUserWithoutClass {
    
    let _super = makeUserObjectWithoutClass(firstName: firstName, lastName: lastName)
    
    return (
        setFirstName : _super.setFirstName,
        fullName: {
            return _super.fullName() + " [SPECIAL]"
        }
    )
}

