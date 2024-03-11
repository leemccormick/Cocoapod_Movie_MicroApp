//
//  SearchRouter.swift
//  SearchMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI
import DataModels
import Navigation

class SearchRouter: ObservableObject {
    static let shared: SearchRouter = .init()
    
    enum Destination: Codable, Hashable {
        case movieDetails(movie: Movie)
    }
    
    @Published var navPathWrapper = NavigationPathWrapper()
    
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

