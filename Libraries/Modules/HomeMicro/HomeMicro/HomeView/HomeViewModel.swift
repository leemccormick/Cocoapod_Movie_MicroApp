//
//  HomeViewModel.swift
//  HomeMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import ApiService
import DataModels
import Foundation
import Navigation

@MainActor
public class HomeViewModel: ObservableObject {
    @Published var horrorpMovies: [Movie] = []
    @Published var romanticMovies: [Movie] = []
    
    private let homeRouter = HomeRouter.shared
    private let movieService = MovieService.shared
    
    init() {
        Task {
            do {
                let horrorResponse = try await movieService.getMovies(bySearchTerm: "horror")
                let romanticResponse = try await movieService.getMovies(bySearchTerm: "romantic")
                horrorpMovies = horrorResponse
                romanticMovies = romanticResponse
            } catch {
                // TODO: Handel error here..;
                print("Error : An error occur when fetching data. ")
            }
        }
    }
    
    func seeStyleGuideButtonTapped() {
        homeRouter.navigate(to: .styleGuide)
    }
}
