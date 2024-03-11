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
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        .padding()
    }
}

#Preview {
    FrameWorkTitleView(framework: MockData.sampleFramework)
}
