//
//  HeaderPlayers.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

struct HeaderPlayers: View {
    @State private var texts: [String] = Array(repeating: "", count: numberOfPlayers)
    @Binding var sums: [Int]

    var body: some View {
            HStack {
                ForEach(0..<texts.count, id: \.self) { index in
                        VStack{
                            TextField("Player \(index + 1)", text: $texts[index])
                                .background(.black)
                                .foregroundColor(.white)
                                .font(Font.system(size: 10, weight: .bold))
                            Text("\(sums[index])")
                        }
                        .frame(width: 50, height: 40)
                        .cornerRadius(10)
                    
                }
            }.rowStyle()
        
    }
        
        
}

struct HeaderPlayers_Previews: PreviewProvider {
    static var previews: some View {
        HeaderPlayers(sums: Binding.constant(Array(repeating: 0, count: numberOfPlayers)))
    }
}
