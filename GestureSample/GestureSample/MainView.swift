//
//  ContentView.swift
//  GestureSample
//
//  Created by 박승호 on 2023/07/12.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    TapGestureView()
                } label: {
                    Text("Tap & LongPress")
                }
                NavigationLink {
                    DragGestureView()
                } label: {
                    Text("Drag")
                }
                NavigationLink {
                    RotationGestureView()
                } label: {
                    Text("Rotation")
                }
                NavigationLink {
                    ShapeView()
                } label: {
                    Text("Drawing & Shape")
                }
            }
            .navigationTitle("Gestures Test")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
