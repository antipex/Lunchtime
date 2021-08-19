//
//  PlaceService.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation
import CoreLocation

protocol PlaceServiceProtocol {
    func nearbySearch(at location: CLLocation, completion: ValueCallback<[Place]>)
}

class PlaceService: PlaceServiceProtocol {

    func nearbySearch(at location: CLLocation, completion: ValueCallback<[Place]>) {
        let path = RequestPath(endpoint: "/maps/api/place/nearbysearch/json?\(location.coordinate.latitude),\(location.coordinate.longitude)")
        RequestManager().request(path: path, method: .get, params: nil) { result in

        }
    }

}
