//
//  SheetScreen2.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct SheetScreen2: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Color.secondary
                .frame(height: 100)

            Spacer()
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("This is Third screen")
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Close This one")
            })
            
            Spacer()
        }
        .padding()
    }
}


#Preview {
    SheetScreen2()
}
