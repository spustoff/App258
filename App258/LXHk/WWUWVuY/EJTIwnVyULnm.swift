//
//  GyLmERGhWY.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct GyLmERGhWY: Codable, Hashable {
    
    var results: [WDZcDViAoO]
}

struct WDZcDViAoO: Codable, Hashable {
    
    var resultHash, resultInstrument, resultPeriod: String
    
    var resultTp, resultSl, resultP: Double
    
    var resultSignal, resultDate: String
}
