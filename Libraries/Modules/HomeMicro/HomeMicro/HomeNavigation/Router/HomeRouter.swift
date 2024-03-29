//
//  HomeRouter.swift
//  HomeMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI
import Navigation

class HomeRouter: ObservableObject {
    static let shared: HomeRouter = .init()
    
    enum Destination: Codable, Hashable {
        case styleGuide
    }
    
    @Published  var navPathWrapper = NavigationPathWrapper()
    
    func navigate(to destination: Destination) {
        navPathWrapper.appendToNavPath(destination)
    }
    
    func navigateBack() {
        navPathWrapper.navigateBack()
    }
    
    func navigateToRoot() {
        navPathWrapper.navigateToRoot()
    }
}
