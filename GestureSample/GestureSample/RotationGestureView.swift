//
//  RotationGestureView.swift
//  GestureSample
//
//  Created by 박승호 on 2023/07/12.
//

import SwiftUI

func + (a : CGSize, b : Angle) -> CGSize{
    CGSize(width: a.width + b.degrees, height: a.height * b.degrees)
}
           
struct RotationGestureView: View {
    @State var position : CGSize = .zero
    @State var angle : Angle = .zero
    var body: some View {
        VStack{
            Image(systemName: "car")
                .font(.largeTitle)
                .scaleEffect(2.0)
                .offset(position + angle)
                .frame(maxWidth:.infinity)
            Image(systemName: "steeringwheel")
                .font(.largeTitle)
                .scaleEffect(4.0)
                .padding()
                .foregroundColor(.blue)
                .rotationEffect(angle)
                .frame(maxWidth:.infinity, maxHeight:.infinity)
                .gesture(
                    RotationGesture()
                        .onChanged { value in
                            angle = value
                            
                        }
                        .onEnded { _ in
                            angle = .zero
                        }
                )
        }
        .navigationTitle("Rotation")
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RotationGestureView()
        }
    }
}
