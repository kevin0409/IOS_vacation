//
//  ContentView.swift
//  imageswitcher
//
//  Created by 박승호 on 2023/07/10.
//

import SwiftUI

struct TopButton : View{
    var isLeft: Bool
    var disalble: Bool
    var action: () -> Void
    var body: some View{
        Button {
            action()
        }label: {
            let name = isLeft ? "arrow.left.circle.fill" : "arrow.right.circle.fill"
            Image(systemName: name)
        }
        .padding()
        .disabled(disalble)
        
    }
}
    
struct TopBotton_Preview: PreviewProvider{
    static var previews: some View{
        TopButton(isLeft: true, disalble: false){}
    }
    struct ContentView: View {
        @State var i : Int = 1
        var body: some View {
            VStack {
                HStack{
                    TopButton(isLeft : true, disalble: i == 1){
                        i -= 1
                    }
                    Spacer()
                    Text("\(i) / 5")
                        .frame(maxWidth: .infinity)
                    Spacer()
                    TopButton(isLeft : false, disalble: i == 5){
                        i += 1
                    }
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
}

