//
//  FavoriteNavigationViewModel.swift
//  FavoriteMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import DataModels
import CommonUI

class FavoriteNavigationViewModel {
    // MARK: - View Builders
    
    func createMovieDetailsView(movie: Movie) -> MovieDetailsView {
        return MovieDetailsView(movie: movie)
    }
}
