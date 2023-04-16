//
//  ContentView.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

let numberOfPlayers = 4
struct ContentView: View {
    @State var rowValues = [Array(repeating: 1, count: numberOfPlayers)]
    @State var scrollToRow = 0
    @State var sums = Array(repeating: 0, count: numberOfPlayers)
    var body: some View {
        VStack{
            HeaderPlayers(sums: $sums)
            FunctionalButtons(rowValues: $rowValues, scrollToRow: $scrollToRow, sums: $sums)
            Rounds(rowValues: $rowValues, scrollToRow: $scrollToRow)
        }  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
