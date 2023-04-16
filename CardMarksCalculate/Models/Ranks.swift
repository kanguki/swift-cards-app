//
//  Model.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

struct Ranks: View {
    let index: Int
    @Binding var values: [Int]
    var body: some View {
        HStack {
            ForEach(0..<values.count, id: \.self) { index in
                Rank(value: $values[index])
            }
        }.rowStyle()
    }
}

struct Ranks_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Ranks(index: 0, values: Binding.constant([1,1,1,1]))
            Ranks(index: 1, values: Binding.constant([1,1,1]))
        }
    }
}
