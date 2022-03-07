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
            ScrollView{
                ForEach(state.artistsByLocation, id: \.self) { artist in
                    Text(artist)
                        .padding()
                }
                Spacer()
                
                } .onAppear(perform: {
                    state.requestAccessToLocationData()
                })
            HStack{
                Button("Find Music") {
                    state.findMusic()
            }
                Image(systemName: "music.mic.circle")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
} 
