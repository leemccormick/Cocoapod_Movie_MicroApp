//
//  View + Extension.swift
//  CommonUI
//
//  Created by Lee McCormick on 3/11/24.
//

import SwiftUI

public extension View {
    func largeTitleTextStyle() -> some View {
        modifier(LargeTitleText())
    }
    
    func titleTextStyle() -> some View {
        modifier(TitleText())
    }
    
    func smallTitleTextStyle() -> some View {
        modifier(SmallTitleText())
    }
    
    func subTitleTextStyle() -> some View {
        modifier(SubtitleText())
    }
    
    func bodyTextStyle() -> some View {
        modifier(BodyText())
    }
    
    func smallBodyTextStyle() -> some View {
        modifier(SmallBodyText())
    }
}
