//
//  FunctionalButtons.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

struct FunctionalButtons: View {
    @Binding var rowValues: [[Int]]
    @Binding var scrollToRow : Int
    @Binding var sums: [Int]
    var body: some View {
        HStack{
            Button(action: {
                rowValues.append(Array(repeating: 1, count: numberOfPlayers))
                scrollToRow = rowValues.count - 1
            }, label: {
                Text("+")
            })
            Button(action: {
                var res = Array(repeating: 0, count: numberOfPlayers)
                for row in rowValues {
                    for (index, value) in row.enumerated() {
                        res[index] += value
                    }
                }
                sums = res
            }, label: {
                Text("Calculate result")
            })
        }
    }
}

struct FunctionalButtons_Previews: PreviewProvider {
    static var previews: some View {
        FunctionalButtons(rowValues: Binding.constant([[1,1,1,1]]), scrollToRow: Binding.constant(0), sums: Binding.constant([1,1,1,1])).rowStyle()
    }
}
