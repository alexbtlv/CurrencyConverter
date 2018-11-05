//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import Foundation


class Currency: Codable, Equatable {
    
    let shortName: String
    let fullName: String
    var ratio: Double
    var index: Int
    
    required init(fullName: String, shortName: String, ratio: Double, index: Int) {
        self.fullName = fullName
        self.shortName = shortName
        self.ratio = ratio
        self.index = index
    }
    
    static func defaultCurrency1() -> Currency {
        let currency = self.init(fullName: "United States Dollar", shortName: "USD", ratio: 1, index: 0)
        return currency
    }
    
    static func defaultCurrency2() -> Currency {
        let currency = self.init(fullName: "Euro", shortName: "EUR", ratio: 0.8, index: 1)
        return currency
    }
    
    static func == (lhs: Currency, rhs: Currency) -> Bool {
        if lhs.fullName == rhs.fullName, lhs.shortName == rhs.shortName, lhs.ratio == rhs.ratio, lhs.index == rhs.index {
            return true
        }
        return false
    }
}
