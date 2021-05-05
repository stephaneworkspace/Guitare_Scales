//
//  ContentView.swift
//  Guitare Scales
//
//  Created by Stephane Bressani on 01.05.21.
//

import SwiftUI


struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    //@State private var animating = false
    @State private var currentView: Tab = .TabScale
    @State private var showModal: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                CurrentScreen(currentView: self.$currentView)
                TabBar(currentView: self.$currentView, showModal: self
                        .$showModal)
            }.edgesIgnoringSafeArea(.all)
        }
        .background(colorScheme == .dark ? Color(.darkGray) : Color(.lightGray))
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: self.$showModal) { ScreenModal() }
    }
}