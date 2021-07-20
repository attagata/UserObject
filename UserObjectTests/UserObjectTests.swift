//
//  UserObjectTests.swift
//  UserObjectTests
//
//  Created by ANDERSON TAGATA on 19/07/21.
//

import XCTest


//@testable overrides access rights in Swift, allowing you to test internal methods in unit tests.
//According to Apple DocumentationNote:
//@testable provides access only for “internal” functions;
//“private” declarations are not visible outside of their file even when using @testable.
@testable import UserObject


class UserObjectTests: XCTestCase {

    func testFullnameCombinationOfFirstAndLastName() {
        
        //sut = System Under Test
        let sut = User(firstName:"Anderson", lastName:"Tagata")
        
        XCTAssertEqual(sut.fullName(), "Anderson Tagata")
    }

    func testCanUpdateFirstName() {
        
        //sut = System Under Test
        let sut = User(firstName:"Anderson", lastName:"Tagata")
        
        sut.set(firstName:"Dear")
        
        XCTAssertEqual(sut.fullName(), "Dear Tagata")
    }
    
    // Testing inheritance SpecialUser class from User class
    func testSpecialUserFullName() {
        
        //sut = System Under Test
        let sut = SpecialUser(firstName:"Anderson", lastName:"Tagata")
        
        // Can change property without override it
        // sut.set(firstName:"Dear")
        
        XCTAssertEqual(sut.fullName(), "Anderson Tagata [Special]")
    }
}


