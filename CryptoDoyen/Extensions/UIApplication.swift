//
//  UIApplication.swift
//  CryptoDoyen
//
//  Created by Ozan Barış Günaydın on 11.10.2021.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
