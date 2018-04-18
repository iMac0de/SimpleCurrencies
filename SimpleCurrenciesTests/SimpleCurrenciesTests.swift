//
//  SimpleCurrenciesTests.swift
//  SimpleCurrenciesTests
//
//  Created by Jeremy Peltier on 16/04/2018.
//  Copyright © 2018 Jeremy Peltier. All rights reserved.
//

import XCTest
import SimpleCurrencies

class SimpleCurrenciesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEURCurrency() {
        let currency = SimpleCurrencies.currency(for: "EUR")
        
        XCTAssertEqual(currency?.code, "EUR")
        XCTAssertEqual(currency?.name, "Euro")
        XCTAssertEqual(currency?.symbol, "€")
        XCTAssertEqual(currency?.codeNumber, 978)
    }
    
    func testEURCurrencyString() {
        XCTAssertEqual(SimpleCurrencies.format(for: "EUR", value: 10), "€10.00")
    }
    
    func testUSDCurrencyString() {
        XCTAssertEqual(SimpleCurrencies.format(for: "USD", value: 10), "$10.00")
    }
    
}
