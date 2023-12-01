//
//  SymbolEffectView.swift
//  SwiftUIFactory
//
//  Created by Asaad Jaber on 01/12/2023.
//

import Foundation
import SwiftUI

struct SymbolEffectView: View {
    var isActive: Bool
    
    var body: some View {
        var counter = 0
        
        Image(systemName: symbols[0])
            .symbolEffect(.variableColor, options: .repeat(1), isActive: isActive)
            .symbolEffect(
                .variableColor,
                options: .repeat(counter),
                value: counter
            )
        Button("Animate") {
            counter += 1
        }
    }
}

#Preview {
    SymbolEffectView(isActive: false)
}
