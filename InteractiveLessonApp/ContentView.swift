//
//  ContentView.swift
//  InteractiveLessonApp
//
//  Created by Esha Hegde on 6/21/24.
//

import SwiftUI

struct ContentView: View {
   
    @State private var name = ""
    @State private var titleText = "What is your name?"
    
    var body: some View {
        VStack (spacing: 100){
            Text(titleText)
                .font(.largeTitle)
            
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,  width: 2)
            
            Button("Submit Name") {
                titleText = "Welcome, \(name)!"
        }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
    
        .padding()
    }
    
}

#Preview {
    ContentView()
}
