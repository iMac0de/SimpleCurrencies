//
//  SimpleCurrency.swift
//  SimpleCurrencies
//
//  Created by Jeremy Peltier on 16/04/2018.
//  Copyright © 2018 Jeremy Peltier. All rights reserved.
//

import Foundation

public class SimpleCurrency: NSObject, NSCoding {
    
    // The display name of the currency based on the device current locale
    public var name: String {
        if !code.isEmpty {
            return NSLocale(localeIdentifier: Locale.current.identifier).displayName(forKey: .currencyCode, value: self.code) ?? ""
        }
        return ""
    }
    
    // The display symbol of the currency based on the device current locale
    public var symbol: String {
        if !code.isEmpty {
            return NSLocale(localeIdentifier: Locale.current.identifier).displayName(forKey: .currencySymbol, value: self.code) ?? ""
        }
        return ""
    }
    
    // The code of the currency
    public var code: String = Locale.current.currencyCode ?? ""
    
    // The code number of the currency according ISO-4217
    public var codeNumber: Int? {
        get {
            guard let bundle = Bundle(identifier: "com.jeremy-peltier.SimpleCurrencies"), let path = bundle.path(forResource: "CurrenciesCodeNumbers", ofType: "plist"),
                let codeNumbers = NSDictionary(contentsOfFile: path) else {
                return nil
            }
            
            guard let code = codeNumbers[self.code] as? Int else {
                return nil
            }
            
            return code
        }
    }
    
    override public var description: String {
        get {
            return "\(name) - \(symbol) - \(code)"
        }
    }
    
    override init() {
        super.init()
    }
    
    convenience init(code: String) {
        self.init()
        self.code = code
    }
    
    convenience required public init?(coder aDecoder: NSCoder) {
        self.init()
        self.code = aDecoder.decodeObject(forKey: "currency.code") as? String ?? ""
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(self.code, forKey: "currency.code")
    }
    
}
