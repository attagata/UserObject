//
//  UserByStructTests.swift
//  UserObjectTests
//
//  Created by ANDERSON TAGATA on 20/07/21.
//

import XCTest


//@testable overrides access rights in Swift, allowing you to test internal methods in unit tests.
//According to Apple DocumentationNote:
//@testable provides access only for “internal” functions;
//“private” declarations are not visible outside of their file even when using @testable.
@testable import UserObject


class UserByStructTests: XCTestCase {

    func testFullnameCombinationOfFirstAndLastName() {
        
        //sut = System Under Test
        let sut = makeUserByStruct(firstName:"Anderson", lastName:"Tagata")
        
        XCTAssertEqual(sut.fullName(), "Anderson Tagata")
    }

    func testCanUpdateFirstName() {
        
        //sut = System Under Test
        let sut = makeUserByStruct(firstName: "Anderson", lastName:"Tagata")
        
        // Error: Value of tuple type '(setFirstName: (String) -> Void, fullName: () -> String)' has no member 'set'
        // sut.set(firstName:"Dear")
        // Refactoring:
        sut.setFirstName("Dear")
        
        
        XCTAssertEqual(sut.fullName(), "Dear Tagata")
    }
    
    // Testing inheritance SpecialUser class from User class
    func testSpecialUserFullName() {
        
        //sut = System Under Test
        let sut = makeSpecialUserByStruct(firstName:  "Anderson", lastName:"Tagata")
        
        // Can change property without override it
        // sut.set(firstName:"Dear")
        
        XCTAssertEqual(sut.fullName(), "Anderson Tagata [SPECIAL]")
    }
    
    
    // MARK: - Helpers

//    private func makeUser(firstName: String, lastName: String) -> User {
//        return User(firstName: firstName, lastName: lastName)
//    }

    private func makeUserByStruct(firstName: String, lastName: String) -> UserByStruct {
        return makeUserByStructObject(firstName: firstName, lastName: lastName)
    }
    
    private func makeSpecialUserByStruct(firstName: String, lastName: String) -> SpecialUserByStruct {
        return makeSpecialUserByStructObject(firstName: firstName, lastName: lastName)
    }
    
}



