//
//  StateController.swift
//  MusicByLocation
//
//  Created by Jamie Thomson on 02/03/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var artistsByLocation: [String] = []
    let locationHandler: LocationHandler = LocationHandler()
    let iTunesAdaptor = ITunesAdaptor()
    var lastKnownLocation: String = "" {
        didSet {
            iTunesAdaptor.getArtists(search: lastKnownLocation, completion : updateArtistsByLOcation)
        }
    }
    
    func updateArtistsByLOcation(artists : [Artist]?) {
        let names = artists?.map {
            return $0.name
        }
        
        DispatchQueue.main.async {
            self.artistsByLocation = names ?? ["error finding artists from your location"]
        }
    }
    
    func findMusic() {
        locationHandler.requestLocation()
    }
    
    func requestAccessToLocationData() {
        locationHandler.stateController = self
        locationHandler.requestAuthorization()
    }
}
