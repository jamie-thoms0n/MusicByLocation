//
//  CLPlacemark.swift
//  MusicByLocation
//
//  Created by Jamie Thomson on 02/03/2022.
//

import Foundation

import CoreLocation

extension CLPlacemark {
    func getLocationBreakdown() -> String {
        return """
               Name: \(self.name ?? "Could not find name")
               Country: \(self.country ?? "Could not find country")
               Postal Code: \(self.postalCode ?? "Could not find postal code")
               Administrative Area: \(self.administrativeArea ?? "Could not find administrative area")
               City: \(self.locality ?? "Could not find locality")
               Street Address: \(self.thoroughfare ?? "Could not find street address")
               """
        
    }
}
