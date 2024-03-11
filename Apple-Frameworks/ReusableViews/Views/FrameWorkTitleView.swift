//
//  FrameWorkTitleView.swift
//  Apple-Frameworks
//
//  Created by Hussein Tijani on 09/03/2024.
//

import SwiftUI

struct FrameWorkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(Color(.label))
        }
        .padding()
    }
}

#Preview {
    FrameWorkTitleView(framework: MockData.sampleFramework)
}
