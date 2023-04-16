//
//  RowStyle.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

// RowStyle is style to render surroundings of row in headers and ranks
struct RowStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .padding(.vertical, 5)
            .background(Color.gray)
            .cornerRadius(10)
    }
}

extension View {
    func rowStyle() -> some View {
        self.modifier(RowStyle())
    }
}
