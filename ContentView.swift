//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Jamie Thomson on 02/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var state = StateController()
    
    var body: some View {
        VStack {
            Form{
                Text(state.artistsByLocation)
                    .padding()
            }
            Spacer()
            Button("Find Music") {
                state.findMusic()
            } .onAppear(perform: {
                state.requestAccessToLocationData()
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
} 
