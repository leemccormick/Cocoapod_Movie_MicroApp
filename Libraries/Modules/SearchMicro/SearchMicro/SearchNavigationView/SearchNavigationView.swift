//
//  SearchNaviagationView.swift
//  SearchMicro
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI

public struct SearchNavigationView: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("Search Navigation")
            SearchView()
        }
    }
}

#Preview {
    SearchNavigationView()
}
