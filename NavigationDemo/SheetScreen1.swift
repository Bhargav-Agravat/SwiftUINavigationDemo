//
//  SheetScreen1.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct SheetScreen1: View {
    @State var isopenSecondView: Bool = false
    
    var body: some View {
        VStack {
            Color.secondary
                .frame(height: 100)

            Spacer()
            
            Text("This is Second screen")
            
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button {
                isopenSecondView = true
            } label: {
                Text("Open Third screen")
            }
            Spacer()

        }
        .padding()
        .sheet(isPresented: $isopenSecondView, content: {
            SheetScreen2()
        })
        
    }
}


#Preview {
    SheetScreen1()
}
