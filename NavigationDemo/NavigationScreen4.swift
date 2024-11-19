//
//  NavigationScreen4.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct NavigationScreen4: View {
    @EnvironmentObject var contentViewModel: ContentViewModel

    var body: some View {
        ZStack {
            VStack {
                Text("Navigation Screen 4")
                    .padding()
                
                Button {
                    contentViewModel.openDirectMainScreen()
                } label: {
                    Text("Direct Back to main screen")
                }
            }
        }
    }
}

#Preview {
    NavigationScreen4()
}
