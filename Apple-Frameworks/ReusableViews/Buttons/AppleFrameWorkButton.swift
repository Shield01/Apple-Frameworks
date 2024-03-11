//
//  AppleFrameWorkButton.swift
//  Apple-Frameworks
//
//  Created by Hussein Tijani on 09/03/2024.
//

import SwiftUI

struct AppleFrameWorkButton: View {
    let text: String
    
    var body: some View {
        Text (text)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10.0)
            .padding()
    }
}

#Preview {
    AppleFrameWorkButton(text: "Test Title")
}
