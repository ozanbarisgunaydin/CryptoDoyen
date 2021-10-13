//
//  String.swift
//  CryptoDoyen
//
//  Created by Ozan Barış Günaydın on 12.10.2021.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
