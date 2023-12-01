//
//  VerticalScrollView.swift
//  SwiftUIFactory
//
//  Created by Asaad Jaber on 27/11/2023.
//

import Foundation
import SwiftUI
 
struct VerticalScrollView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(0..<30) { n in
                    SymbolEffectView(isActive: isActive).onTapGesture {
                        isActive.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    VerticalScrollView()
}
