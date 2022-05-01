//
//  UnitsModel.swift
//  
//
//  Created by Kanstantsin Bucha on 29/04/2022.
//

import Foundation

struct UnitsModel: Decodable {
    var version: String
    var models: [UnitModel]
    enum CodingKeys: String, CodingKey {
        case version
        case models = "unit_models"
    }
}
