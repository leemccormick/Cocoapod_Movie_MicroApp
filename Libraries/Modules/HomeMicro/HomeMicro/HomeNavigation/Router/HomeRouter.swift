//
//  HomeRouter.swift
//  HomeMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI
import Navigation

public class HomeRouter: ObservableObject {
    public static let shared: HomeRouter = .init()
    
    public enum Destination: Codable, Hashable {
        case styleGuide
    }
    
    @Published public var navPathWrapper = NavigationPathWrapper()
    
    public func navigate(to destination: Destination) {
        navPathWrapper.appendToNavPath(destination)
    }
    
    public func navigateBack() {
        navPathWrapper.navigateBack()
    }
    
    public func navigateToRoot() {
        navPathWrapper.navigateToRoot()
    }
}
