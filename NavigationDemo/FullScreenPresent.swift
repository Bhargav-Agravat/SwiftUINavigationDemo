//
//  FullScreenPresent.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct FullScreenPresent: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Color.secondary
                .frame(height: 100)
            
            Spacer()
            
            Text("FullScreenPresent")
                .padding()
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Close")
            })
            
            Spacer()
        }
    }
}

#Preview {
    FullScreenPresent()
}
