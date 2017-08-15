//
//  StockViewModel.swift
//  Sgnls
//
//  Created by Jesse Tello on 8/15/17.
//  Copyright © 2017 jt. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

enum SgnlType: Int32 {
    case sma = 0
    case ema = 1
    case macd = 2
    case rsi = 3
}

class SgnlStockViewModel {
    
    let stock:SgnlStock
    
    init(sgnlStock:SgnlStock) {
        self.stock = sgnlStock
    }
    
    func intradayData() {
        let req = URLRequest(url: URL(string: "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=" + self.stock.symbol! + "&interval=1min&apikey=\(Constants.apiKey)")!)
        dataRequest(request: req)
    }
    
    func dailyData() {
        
    }
    
    func sgnals() {
        
    }
    
    private func dataRequest(request:URLRequest) {
        let responseJSON = URLSession.shared.rx.json(request: request)
        
    }
}
