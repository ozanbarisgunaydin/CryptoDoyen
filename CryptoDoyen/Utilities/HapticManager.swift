//
//  HapticManager.swift
//  CryptoDoyen
//
//  Created by Ozan Barış Günaydın on 12.10.2021.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
