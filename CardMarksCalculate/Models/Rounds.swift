//
//  Rounds.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

struct Rounds: View {
    @Binding var rowValues: [[Int]]
    @Binding var scrollToRow : Int
    var body: some View {
        ScrollView {
            ScrollViewReader { scrollView in
                VStack {
                    ForEach(0..<rowValues.count, id: \.self) { index in
                        Ranks(index: index, values: $rowValues[index])
                            .onAppear{
                            if index == scrollToRow {
                                withAnimation{
                                    scrollView.scrollTo(index, anchor: .bottom)
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

struct Rounds_Previews: PreviewProvider {
    static var previews: some View {
        Rounds(rowValues: Binding.constant([
            [1,2,3,4],[5,6,1,2],[3,4,5,6],[1,2,3,4],[5,6,1,2],[3,4,5,6],[5,6,1,2],[3,4,5,6]
        ]),
                scrollToRow: Binding.constant(7))
    }
}
