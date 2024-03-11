//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Hussein Tijani on 09/03/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .fontWeight(.semibold)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AppleFrameWorkButton(text: "Learn More")
            }
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
