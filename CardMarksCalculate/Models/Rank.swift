//
//  Button.swift
//  CardMarksCalculate
//
//  Created by Mo Nguyen on 16/04/2023.
//

import SwiftUI

struct Rank: View {
    @Binding var value: Int
    var range: ClosedRange<Int> = 1...6
    
    var body: some View {
        Button(action: {}, label: {
            Text("\(value)")
        })
        .buttonStyle(MyRankStyle(tapAction: {
            value = min(value + 1, range.upperBound)
        }, longPressAction: {
            value = max(value - 1, range.lowerBound)
        },
        bgColor: {
            switch value {
            case 1:
                return AnyView(Color.green)
            case 5:
                return AnyView(Color.red.overlay(Image(systemName: "flame.fill").foregroundColor(.orange)) )
            case 6:
                return AnyView(Color.black.overlay(Image(systemName: "theatermasks").foregroundColor(.red)) )
            default:
                return AnyView(Color.blue)
            
            }
        }))
    }
}

struct MyRankStyle: ButtonStyle {
    let tapAction: () -> Void
    let longPressAction: () -> Void
    let bgColor: () -> AnyView
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 50, height: 50)
            .background(bgColor())
            .foregroundColor(.black)
            .font(Font.system(size: 24, weight: .bold))
            .cornerRadius(10)
            .onTapGesture {
                tapAction()
            }
            .onLongPressGesture(minimumDuration: 0.2) {
                longPressAction()
            }
    }
}
struct Rank_Previews: PreviewProvider {
    static var previews: some View {
        Rank(value: Binding.constant(1))
    }
}
