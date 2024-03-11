//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Hussein Tijani on 09/03/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameWorkTitleView(framework: framework)
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .navigationDestination(for: Framework.self) { framework in
                    FrameworkDetailView(framework: framework)
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}



