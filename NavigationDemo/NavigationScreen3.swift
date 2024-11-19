//
//  NavigationScreen3.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct NavigationScreen3: View {
    @EnvironmentObject var contentViewModel: ContentViewModel

    var body: some View {
        ZStack {
            NavigationLink(destination: NavigationScreen4(), isActive: $contentViewModel.isOpenNavigation4) {
            }
            .opacity(0)

            VStack {
                Text("Navigation Screen 3")
                    .padding()
                
                Button {
                    contentViewModel.isOpenNavigation4 = true
                } label: {
                    Text("Open Navigation Screen 4")
                }
                .padding()
                
                Button {
                    contentViewModel.openScreen1()
                } label: {
                    Text("Back to Navigation Screen 1")
                }
            }
        }
    }
}

#Preview {
    NavigationScreen3()
}
