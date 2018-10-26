//
//  Quote.swift
//  Pensamentos
//
//  Created by Gustavo De Sousa on 25/09/18.
//  Copyright © 2018 Gustavo De Sousa. All rights reserved.
//

import Foundation

struct Quote: Codable //Encodable, Decodable
{
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String{
        return "〝" + quote + "〞"
    }
    
    var authorFormatted: String{
        return "- " + quote + " -"
    }
}
