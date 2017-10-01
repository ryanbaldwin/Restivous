//
//  HttpGettable.swift
//  Restivus
//
//  Created by Ryan Baldwin on 2017-08-21.
//  Copyright © 2017 bunnyhug.me. All rights governed under the Apache 2 License Agreement
//

import Foundation

/// Designates the conforming type as a GET HTTP Request.
public protocol Gettable: Restable {}

extension Gettable {
    /// Creates a GET request for the current instance
    ///
    /// - Returns: The URLRequest
    /// - Throws: An HTTPMethodError when the attempt to make the URLRequest failed.
    public func request() throws -> URLRequest {
        return try HTTPMethod.get.makeURLRequest(for: self)
    }
}

extension Gettable where Self: Encodable {
    /// Creates a GET request for the current Encodable instance,
    /// and encodes itself into the HTTP body of the request.
    ///
    /// - Returns: The URLRequest
    /// - Throws: An HTTPMethodError when the attempt to make the URLRequest failed.
    public func request() throws -> URLRequest {
        return try HTTPMethod.get.makeURLRequest(for: self)
    }
}

