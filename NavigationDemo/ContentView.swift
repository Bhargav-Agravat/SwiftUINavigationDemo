//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 18/11/24.
//

import SwiftUI


struct ContentView: View {
    @StateObject var contentViewModel: ContentViewModel = ContentViewModel()
        
    var body: some View {
        NavigationView{
            ZStack {
                NavigationLink(destination: NavigationScreen1(), isActive: $contentViewModel.isOpenNavigation1) {
                }
                .opacity(0)
                
                VStack(spacing: 10) {
                    Text("This is Main screen")
                    
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                    Button {
                        contentViewModel.isopenFirstSheetView = true
                    } label: {
                        Text("Open second screen")
                    }
                    
                    
                    Button {
                        contentViewModel.isOpenNavigation1 = true
                    } label: {
                        Text("Open Navigation Screen 1")
                    }
                     
                    Button {
                        contentViewModel.isOpenFullScreen = true
                    } label: {
                        Text("Open fullScreen")
                    }
                    
                }
                .padding()
            }
            .fullScreenCover(isPresented: $contentViewModel.isOpenFullScreen, content: {
                FullScreenPresent()
            })
            .sheet(isPresented: $contentViewModel.isopenFirstSheetView, content: {
                SheetScreen1()
            })
        }
        .navigationViewStyle(.stack)
        .environmentObject(contentViewModel)
    }
}


