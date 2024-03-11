//
//  HomeView.swift
//  HomeMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI
import CommonUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var didAppear: ((Self) -> Void)?
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "house")
                    .imageScale(.large)
                    .foregroundStyle(Color.primaryDark)
                    .fontWeight(.bold)
                
                Text("HOME VIEW!!!")
                    .largeTitleTextStyle()
            }
            
            Button("See style guide") {
                viewModel.seeStyleGuideButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
            
            
            if !viewModel.horrorpMovies.isEmpty {
                VStack {
                    HStack {
                        Text("Horror Movies")
                            .subTitleTextStyle()
                            .padding()
                            .border(Color.secondaryDark)
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(viewModel.horrorpMovies, id: \.self) { movie in
                                MovieCard(movie: movie)
                            }
                        }
                    }
                }
                .padding()
            }
            
            if !viewModel.romanticMovies.isEmpty {
                VStack {
                    HStack {
                        Text("Romantic Movies")
                            .subTitleTextStyle()
                            .padding()
                            .border(Color.secondaryDark)
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(viewModel.romanticMovies, id: \.self) { movie in
                                MovieCard(movie: movie)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear { self.didAppear?(self) }
        .padding()
    }
}

#Preview {
    HomeView()
}
