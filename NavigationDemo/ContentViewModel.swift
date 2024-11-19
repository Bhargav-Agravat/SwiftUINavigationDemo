//
//  ContentViewModel.swift
//  NavigationDemo
//
//  Created by Bhargav Agravat on 19/11/24.
//

import Foundation


class ContentViewModel: ObservableObject{
    @Published var isOpenNavigation1: Bool = false
    @Published var isOpenNavigation2: Bool = false
    @Published var isOpenNavigation3: Bool = false
    @Published var isOpenNavigation4: Bool = false
    
    @Published var isOpenFullScreen: Bool = false
    
    @Published var isopenFirstSheetView: Bool = false
    
    func openDirectMainScreen(){
        self.isOpenNavigation1 = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7){
            self.isOpenNavigation2 = false
            self.isOpenNavigation3 = false
            self.isOpenNavigation4 = false
        }
    }   
    
    func openScreen1(){
//        self.isOpenNavigation1 = false
        self.isOpenNavigation2 = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7){
            self.isOpenNavigation3 = false
            self.isOpenNavigation4 = false
        }
    }
}
