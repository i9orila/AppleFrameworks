//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by I9orila on 03.02.2023.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            
            Button {
                isShowDetailView = false
                }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    .padding()
            }
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowDetailView: .constant(false))
    }
}
