//
//  ContentView.swift
//  MOoreControls
//
//  Created by 박승호 on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    var names = ["a","b","c","d","e","f","g"]
    var body: some View {
        VStack {
            NavigationView {
                List{ //10개 까지
                    ForEach(names, id: \.self){ row in
                        NavigationLink{
                            DetailView(item : row)
                        }label: {
                            HStack{
                                Image(systemName: "pencil.tip.crop.circle.badge.arrow.forward")
                                Text(row)
                            }
                        }
                    }
                }
                .navigationTitle("Worlds")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [.red, .cyan], startPoint: .topLeading, endPoint: .bottomTrailing)
                
            )
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
