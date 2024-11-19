//
//  NavigationScreen2.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import SwiftUI

struct NavigationScreen2: View {
    @EnvironmentObject var contentViewModel: ContentViewModel

    var body: some View {
        ZStack {
            NavigationLink(destination: NavigationScreen3(), isActive: $contentViewModel.isOpenNavigation3) {
            }
            .opacity(0)

            VStack {
                Text("Navigation Screen 2")
                    .padding()
                
                Button {
                    contentViewModel.isOpenNavigation3 = true
                } label: {
                    Text("Open Navigation Screen 3")
                }
            }
        }
    }
}

#Preview {
    NavigationScreen2()
}
