//
//  UserByStruct.swift
//  UserObject
//
//  Created by ANDERSON TAGATA on 20/07/21.
//

import Foundation

// Use of Struck instead class
struct UserByStruct {
    let setFirstName: (String) -> Void
    let fullName: () -> String
}

func makeUserByStructObject(firstName: String, lastName: String) ->  UserByStruct {
    
    var _firstName = firstName
    
    return UserByStruct(
        setFirstName : { newFirstName in
        _firstName = newFirstName
    },
        fullName: {
            return _firstName + " " + lastName

    }
    )
}

// Use of Struck instead class
struct SpecialUserByStruct {
    let setFirstName: (String) -> Void
    let fullName: () -> String
}

func makeSpecialUserByStructObject(firstName: String, lastName: String) -> SpecialUserByStruct {
    
    let _super = makeUserByStructObject(firstName: firstName, lastName: lastName)
    
    return SpecialUserByStruct(
        setFirstName : _super.setFirstName,
        fullName: {
            return _super.fullName() + " [SPECIAL]"
        }
    )
}

