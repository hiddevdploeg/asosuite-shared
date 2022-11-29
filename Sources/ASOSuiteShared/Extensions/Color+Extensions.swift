//
//  Color+Extensions.swift
//  
//
//  Created by Niels Mouthaan on 29/11/2022.
//

import Foundation
import SwiftUI

extension Color {
    
    public init(score: Int) {
        if score < 20 {
            self = .red
        } else if score < 40 {
            self = .orange
        } else {
            self = .green
        }
    }
}
