//
//  Request.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation

protocol RequestData {
    var path: String? { get set }
    var method: HTTPMethod { get set }
    var params: RequestParams { get set }
}
