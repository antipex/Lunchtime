//
//  RequestPath.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation

struct RequestPath {

    private let endpoint: String

    var fullPath: String {
        return K.scheme + K.host + endpoint
    }

    init(endpoint: String) {
        self.endpoint = endpoint
    }

}
