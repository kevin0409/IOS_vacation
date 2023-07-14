//
//  DragGestureView.swift
//  GestureSample
//
//  Created by 박승호 on 2023/07/12.
//

import SwiftUI

func + (a: CGSize, b : CGSize) -> CGSize{
    CGSize(width: a.width + b.width, height: a.height + b.height)
}

struct DragGestureView: View {
    @State var globeposition = CGSize.zero
    @State var globefinal = CGSize.zero
    var body: some View {
        VStack{
            Image(systemName: "l.joystick")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .offset(globeposition)
                //.offset(globeposition + globefinal)
                .foregroundColor(.blue)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            globeposition = value.translation
                            print("x, y = \(globeposition)")
                        }
                        .onEnded{ value in
                            //globefinal = globefinal + globeposition
                            globeposition = .zero
                        }
                )
        }
        
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
