//
//  SearchNavigationViewModel.swift
//  SearchMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import DataModels
import CommonUI

class SearchNavigationViewModel {
    // MARK: - View Builders
    
    func createSearchView() -> SearchView {
        SearchView()
    }
    
    func createMovieDetailsView(movie: Movie) -> MovieDetailsView {
        MovieDetailsView(movie: movie)
    }
}

