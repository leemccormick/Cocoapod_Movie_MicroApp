//
//  FavoriteRouter.swift
//  FavoriteMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import DataModels
import Navigation
import SwiftUI

class FavoriteRouter: ObservableObject {
    static let shared: FavoriteRouter = .init()
    
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
