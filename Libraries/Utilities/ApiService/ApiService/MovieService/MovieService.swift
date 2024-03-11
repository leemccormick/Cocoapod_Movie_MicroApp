//
//  MovieService.swift
//  ApiService
//
//  Created by Lee McCormick on 3/11/24.
//

import Combine
import Foundation
import DataModels

public class MovieService {
    public init() {}
    public static let shared: MovieService = .init()
    
    
    public func getMovies(bySearchTerm search: String) async throws -> [Movie] {
        let urlString = "https://www.omdbapi.com/?s=\(search)&apikey=9b055f0c"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        do {
            let movieSearch  = try JSONDecoder().decode(MovieSearch.self, from: data)
            return movieSearch.searchResult
        } catch {
            throw URLError(.resourceUnavailable)
        }
    }
}
