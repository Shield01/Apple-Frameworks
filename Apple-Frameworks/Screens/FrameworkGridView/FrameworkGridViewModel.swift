//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Hussein Tijani on 09/03/2024.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    var selectedFrameWork: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem] = .init(repeating: GridItem(), count: 3)
    
    @Published var isShowingDetailView: Bool = false
}
