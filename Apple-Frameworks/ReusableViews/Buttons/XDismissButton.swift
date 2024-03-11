//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Hussein Tijani on 11/03/2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label : {
                Image(systemName: "xmark")
                    .frame(width: 44, height: 44)
                    .foregroundColor(Color(.label))
                    .padding()
            }
            
        }
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
