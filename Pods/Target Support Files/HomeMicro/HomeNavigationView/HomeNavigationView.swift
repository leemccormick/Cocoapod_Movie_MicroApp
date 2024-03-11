//
//  HomeNavigationView.swift
//  FavoriteMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI

public struct HomeNavigationView: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("This is home navigation view")
            HomeView()
        }
    }
}

#Preview {
    HomeNavigationView()
}
