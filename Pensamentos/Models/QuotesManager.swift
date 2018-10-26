//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Gustavo De Sousa on 25/09/18.
//  Copyright © 2018 Gustavo De Sousa. All rights reserved.
//

import Foundation

class QuotesManager {
    
    let quotes: [Quote]
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsondDecoder = JSONDecoder()
        quotes = try! jsondDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRadomQuote() -> Quote{
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
        
    }
}
