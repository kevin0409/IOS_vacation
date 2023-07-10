//
//  ContentView.swift
//  imageswitcher
//
//  Created by 박승호 on 2023/07/10.
//

import SwiftUI

struct ContentView: View {
    @State var i : Int = 1
    var body: some View {
        VStack {
            HStack{
                Button {
                    i -= 1
                    if i < 1{
                        i = 5
                    }
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                //.disabled(i == 1)
                Text("\(i) / 5")
                    .frame(maxWidth: .infinity)
                Button {
                    i += 1
                    if i > 5{
                        i = 1
                    }
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                }
                //.disabled(i == 5)
            }
            .font(.largeTitle)
            Image("\(i)")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
