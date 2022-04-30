//
//  FrameworkAssets.swift
//  DetectaConnect
//
//  Created by Konstantin on 4/24/21.
//

import UIKit

extension URL {
    init(frameworkAssetName: String) throws {
        let url = DConnect.assetsBundle.url(forResource: frameworkAssetName, withExtension: nil)
        guard let url = url else {
            throw GenericError.resourceNotFound
        }
        self = url
    }
}

struct FrameworkAsset: _ExpressibleByImageLiteral {
    let image: UIImage

    init(imageLiteralResourceName name: String) {
        guard let image = UIImage(named: name, in: DConnect.assetsBundle, compatibleWith: nil) else {
            preconditionFailure("Image named \(name) was not found in bundle \(DConnect.assetsBundle)")
        }
        self.image = image
    }
}

extension UIColor {
    static func frameworkAsset(named name: String) -> UIColor {
        guard let color = UIColor(named: name, in: DConnect.assetsBundle, compatibleWith: nil) else {
            preconditionFailure("Color named \(name) was not found in bundle \(DConnect.assetsBundle)")
        }
        return color
    }
}

/// Examples:
/// let image = (#imageLiteral(resourceName: "detecta-medium") as FrameworkAsset).image
/// let color2 = UIColor.frameworkAsset(named: "AirBlue")
/// PlusButton.setImage(
///     (#imageLiteral(resourceName: "plus-medium") as FrameworkAsset).image.withTintColor(.frameworkAsset(named: "AirBlue")),
///     for: .normal
/// )
