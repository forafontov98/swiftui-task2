//
//  ContentView.swift
//  swiftui-task2
//
//  Created by MacBook on 03.10.2023.
//

import SwiftUI

struct ContentView: View {

    private enum Constants {
        static let minValue: CGFloat = 100
        static let maxValue: CGFloat = 300
        static let containerHeight: CGFloat = 200
    }

    @State private var value: CGFloat = Constants.maxValue

    var body: some View {
        VStack {
            Group {
                Text("Марафон ")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                + Text("по SwiftUI ")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                + Text("\"Отцовский пинок\"")
                    .font(.system(size: 24))
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
            }
            .frame(width: value, height: Constants.maxValue)
            .border(.red)
            Slider(value: $value, in: Constants.minValue...Constants.maxValue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
