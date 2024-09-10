//
//  HeartController.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/9/24.
//

import Foundation

class HeartController {
    static let shared = HeartController()
    
    var heartCount = 5531
    
    private init() {} // Singleton pattern
    
    func increaseHeartCount() -> Int {
        heartCount += 1
        return heartCount
    }
}
