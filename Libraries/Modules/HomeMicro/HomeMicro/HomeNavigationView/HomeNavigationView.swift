//
//  HomeNavigationView.swift
//  HomeMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI

public struct HomeNavigationView: View {
    public init() {}
    public var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: StyleGuideView()) {
                    Text("Go to StyleGuideView View")
                }
            }
            .navigationTitle("Main View")
        }
//        VStack {
//            Text("Home Navigation View")
//            HomeView()
//        }
    }
}

#Preview {
    HomeNavigationView()
}
