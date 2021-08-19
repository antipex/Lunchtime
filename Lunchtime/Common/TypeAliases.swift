//
//  TypeAliases.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation

typealias RequestParams = [String: Any]
typealias RequestCallback = (Result<(HTTPStatusCode, Data?), LunchError>) -> Void

typealias Callback = () -> Void
typealias ValueCallback<T> = (T) -> Void
