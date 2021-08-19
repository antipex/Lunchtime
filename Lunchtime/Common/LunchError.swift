//
//  LunchError.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation

enum LunchError: Error, Equatable {

    case api(message: String, statusCode: HTTPStatusCode, endpoint: String, json: [String: Any]?)
    case parsing
    case network

    static func == (lhs: LunchError, rhs: LunchError) -> Bool {
        switch (lhs, rhs) {
        case let (.api(_, leftCode, _, _), .api(_, rightCode, _, _)):
            return leftCode == rightCode
        case (.parsing, .parsing),
             (.network, .network):
            return true
        default:
            return false
        }
    }

}
