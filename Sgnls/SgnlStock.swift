//
//  SgnlStock.swift
//  Sgnls
//
//  Created by Jesse Tello on 8/15/17.
//  Copyright © 2017 jt. All rights reserved.
//

import Foundation

typealias AnyDict = [String: Any]

class SgnlStock {
    let symbol: String
    let name: String
    let intraday: [String:Any]
    
    init?(dictionary: AnyDict) {
        guard let metaDict = dictionary["Meta Data"] as? AnyDict,
            let intraday = dictionary["Time Series"] as? AnyDict,
            let symbol = metaDict["Symbol"] as? String,
            let name = metaDict["Information"] as? String
            else {
                return nil
        }
        self.symbol = symbol
        self.name = name
        self.intraday = intraday
    }
}
