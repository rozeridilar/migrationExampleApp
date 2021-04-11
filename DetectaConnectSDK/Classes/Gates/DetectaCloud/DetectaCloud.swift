//
//  DetectaCloud.swift
//  DetectaConnectSDK
//
//  Created by Kanstantsin Bucha on 3.04.21.
//

import Foundation

enum DetectaCloud {
    enum Endpoint {
        // Don't put a tail slash here
        static let cloudServer = "http://detecta.group/api/1"
        static let measurements = "measurements"
    }
    enum Field {
        static let createdAt = "createdAt" // cloud created field
        static let millis = "millis"
    }
    enum Query {
        static let limit = "$limit"
        static let sort = "$sort"
    }
    enum Order {
        static let ascending = 1
        static let descending = -1
    }
}
