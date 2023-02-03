//
//  FrameworksGridView.swift
//  AppleFrameworks
//
//  Created by I9orila on 31.01.2023.
//

import SwiftUI

struct FrameworksGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
   var body: some View {
        NavigationView() {
            ScrollView() {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle(" 🧑‍💻  Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView()
            .preferredColorScheme(.dark)
    }
}


