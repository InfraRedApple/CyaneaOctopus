//
//  UITextField_CyaneaOctopus.swift
//  CyaneaOctopus
//
//  Created by Adam McElhaney on 10/29/18.
//  Copyright © 2018 Adam McElhaney. All rights reserved.
//

import UIKit

extension UITextField {
    public var substituteFontName : String {
        get {
            return self.font?.fontName ?? ""
        }
        set {
            let fontNameToTest = self.font?.fontName.lowercased() ?? ""
            var fontName = newValue
            if fontNameToTest.range(of: "bold") != nil {
                fontName += "-Bold"
            } else if fontNameToTest.range(of: "medium") != nil {
                fontName += "-Medium"
            } else if fontNameToTest.range(of: "light") != nil {
                fontName += "-Light"
            } else if fontNameToTest.range(of: "ultralight") != nil {
                fontName += "-UltraLight"
            }
            self.font = UIFont(name: fontName, size: self.font?.pointSize ?? 17)
        }
    }
}
