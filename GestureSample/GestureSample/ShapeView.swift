//
//  ShapeView.swift
//  GestureSample
//
//  Created by 박승호 on 2023/07/12.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack{
            Color.red
                .frame(width: 200, height: 50)
            
            Rectangle()
                .stroke(lineWidth: 20)
                .fill(
                    LinearGradient(colors: [.red, .blue], startPoint:.top , endPoint: .bottom)
                )
                .frame(height: 50)
                .cornerRadius(5)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 20)
                .frame(height: 50)
                .padding()
            Capsule()
                .stroke(lineWidth: 20)
                .frame(height: 50)
                .padding()
            GeometryReader { geometry in
                        Path { path in
                            
                            let rect = CGRect(origin: .zero, size: geometry.size)
                            
                            path.move(to: CGPoint(x: rect.size.width/2, y: 0))
                                       
                                        path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: rect.size.height), control: CGPoint(x: rect.size.width, y: rect.size.height))
                                        
                                        path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: 0), control: CGPoint(x: 0, y: rect.size.height))
                            
                            // 경로를 닫습니다.
                            path.closeSubpath()
                        }
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottom))
                                .frame(width: 200, height: 200)
                    }
            
        }
        .navigationTitle("Shape")
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShapeView()
        }
    }
}
