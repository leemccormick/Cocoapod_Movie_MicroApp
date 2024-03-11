//
//  FavoriteNavigationView.swift
//  FavoriteMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI

public struct FavoriteNavigationView: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("This is favorite Navigationmicro app")
            FavoriteView()
        }
    }
}

#Preview {
    FavoriteNavigationView()
}
