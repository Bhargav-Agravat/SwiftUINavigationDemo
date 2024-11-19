//
//  NavigationScreen1.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct NavigationScreen1: View {
    @EnvironmentObject var contentViewModel: ContentViewModel

    var body: some View {
        ZStack {
            NavigationLink(destination: NavigationScreen2(), isActive: $contentViewModel.isOpenNavigation2) {
            }
            .opacity(0)

            VStack {
                Text("Navigation Screen 1")
                    .padding()

                Button {
                    self.contentViewModel.isOpenNavigation2 = true
                } label: {
                    Text("Open Navigation Screen 2")
                }
            }
        }
    }
}

#Preview {
    NavigationScreen1()
}
