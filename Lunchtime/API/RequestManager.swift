//
//  RequestManager.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation

class RequestManager {

    func request(
        path: RequestPath,
        method: HTTPMethod,
        params: RequestParams?,
        callback: @escaping RequestCallback
    ) {
        guard let url = URL(string: path.fullPath) else { return }

        var urlRequest = URLRequest(url: url)

        urlRequest.httpMethod = method.rawValue

        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                callback(.failure(.network))
                return
            }

            guard let httpResponse = response as? HTTPURLResponse else {
                callback(.failure(.network))
                return
            }

            let statusCode = HTTPStatusCode(rawValue: httpResponse.statusCode) ?? .unknown

            callback(.success((statusCode, data)))
        }

        task.resume()
    }

}
