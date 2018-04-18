//
//  SimpleCurrencies.swift
//  SimpleCurrencies
//
//  Created by Jeremy Peltier on 16/04/2018.
//  Copyright © 2018 Jeremy Peltier. All rights reserved.
//

import Foundation

public class SimpleCurrencies {
    
    public class var all: [SimpleCurrency] {
        get {
            var currencies: [SimpleCurrency] = []
            
            for code in Locale.isoCurrencyCodes {
                currencies.append(SimpleCurrency(code: code))
            }
            
            return currencies
        }
    }
    
    public class var current: SimpleCurrency? {
        get {
            if let code = Locale.current.currencyCode {
                return SimpleCurrency(code: code)
            }
            return nil
        }
    }
    
    public class func currency(for code: String) -> SimpleCurrency? {
        let index = SimpleCurrencies.all.index { (currency) -> Bool in
            return currency.code == code
        }
        
        if index != nil {
            return SimpleCurrencies.all[index!]
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
    
    public class func format(currency: SimpleCurrency, value: NSNumber) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.currencyCode = currency.code
        formatter.numberStyle = .currency
        
        return formatter.string(from: value)
    }
    
}
