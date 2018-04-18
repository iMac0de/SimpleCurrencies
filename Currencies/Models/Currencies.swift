//
//  Currencies.swift
//  Currencies
//
//  Created by Jeremy Peltier on 16/04/2018.
//  Copyright © 2018 Jeremy Peltier. All rights reserved.
//

import Foundation

public class Currencies {
    
    public class var all: [Currency] {
        get {
            var currencies: [Currency] = []
            
            for code in Locale.isoCurrencyCodes {
                currencies.append(Currency(code: code))
            }
            
            return currencies
        }
    }
    
    public class var current: Currency? {
        get {
            if let code = Locale.current.currencyCode {
                return Currency(code: code)
            }
            return nil
        }
    }
    
    public class func currency(for code: String) -> Currency? {
        let index = Currencies.all.index { (currency) -> Bool in
            return currency.code == code
        }
        
        if index != nil {
            return Currencies.all[index!]
        }
        
        return nil
    }
    
    public class func format(for code: String, value: NSNumber) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.currencyCode = code
        formatter.numberStyle = .currency
        
        return formatter.string(from: value)
    }
    
    public class func format(currency: Currency, value: NSNumber) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.currencyCode = currency.code
        formatter.numberStyle = .currency
        
        return formatter.string(from: value)
    }
    
}
