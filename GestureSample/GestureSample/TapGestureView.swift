//
//  TapGestureView.swift
//  GestureSample
//
//  Created by 박승호 on 2023/07/12.
//

import SwiftUI

struct TapGestureView: View {
    @State var count_tap  = 0
    @State var count_Press = 0
    var body: some View {
        VStack {
            Text("Tap me! \(count_tap)")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.yellow
                )
                .onTapGesture {
                    count_tap += 1
                }
            Text("LongPress me \(count_Press) ")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .onLongPressGesture{
                    count_Press += 1
                }
        }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
