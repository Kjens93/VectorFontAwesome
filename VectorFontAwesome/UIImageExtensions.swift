//
//  UIImageExtensions.swift
//  VectorFontAwesome
//
//  Created by Kyler Jensen on 5/13/19.
//  Copyright © 2019 Kyler Jensen. All rights reserved.
//

import UIKit

private class DummyClass {}

private let bundle = Bundle(for: DummyClass.self)

public extension UIImage {
    public convenience init?(fa fontAwesomeId: String, compatibleWith traitCollection: UITraitCollection? = nil) {
        self.init(named: fontAwesomeId, in: bundle, compatibleWith: traitCollection)
    }
}
