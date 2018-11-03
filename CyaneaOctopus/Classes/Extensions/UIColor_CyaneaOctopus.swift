import UIKit
import CoreGraphics

// MARK: - Quick Shorthand Macros
func rgba(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
    
    return UIColor(red: (r / 255.0), green: (g / 255.0), blue: (b / 255.0), alpha: a)
}
func rgb(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
}
func hsba(_ h: CGFloat, _ s: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(hue: h / 360.0, saturation: s / 100.0, brightness: b / 100.0, alpha: a)
}
func hsb(_ h: CGFloat, _ s: CGFloat, _ b: CGFloat) -> UIColor {
    return UIColor(hue: h / 360.0, saturation: s / 100.0, brightness: b / 100.0, alpha: 1.0)
}


public extension UIColor  {
    
    class func flatBlackColor() -> UIColor {
        return  hsb(0, 0, 17)
    }
    
    class func flatBlueColor() -> UIColor {
        return  hsb(224, 50, 63)
    }
    
    class func flatBrownColor() -> UIColor {
        return hsb(24, 45, 37)
    }
    
    class func flatCoffeeColor() -> UIColor {
        return hsb(25, 31, 64)
    }
    
    class func flatForestGreenColor() -> UIColor {
        return hsb(138, 45, 37)
    }
    
    class func flatGrayColor() -> UIColor {
        return hsb(184, 10, 65)
    }
    
    class func flatGreenColor() -> UIColor {
        return hsb(145, 77, 80)
    }
    
    class func flatLimeColor() -> UIColor {
        return hsb(74, 70, 78)
    }
    
    class func flatMagentaColor() -> UIColor {
        return hsb(283, 51, 71)
    }
    
    class func flatMaroonColor() -> UIColor {
        return hsb(5, 65, 47)
    }
    
    class func flatMintColor() -> UIColor {
        return hsb(168, 86, 74)
    }
    
    class func flatNavyBlueColor() -> UIColor {
        return hsb(210, 45, 37)
    }
    
    class func flatOrangeColor() -> UIColor {
        return hsb(28, 85, 90)
    }
    
    class func flatPinkColor() -> UIColor {
        return hsb(324, 49, 96)
    }
    
    class func flatPlumColor() -> UIColor {
        return hsb(300, 45, 37)
    }
    
    class func flatPowderBlueColor() -> UIColor {
        return hsb(222, 24, 95)
    }
    
    class func flatPurpleColor() -> UIColor {
        return hsb(253, 52, 77)
    }
    
    class func flatRedColor() -> UIColor {
        return hsb(6, 74, 91)
    }
    
    class func flatSandColor() -> UIColor {
        return hsb(42, 25, 94)
    }
    
    class func flatSkyBlueColor() -> UIColor {
        return hsb(204, 76, 86)
    }
    
    class func flatTealColor() -> UIColor {
        return hsb(195, 55, 51)
    }
    
    class func flatWatermelonColor() -> UIColor {
        return hsb(356, 53, 94)
    }
    
    class func flatWhiteColor() -> UIColor {
        return hsb(192, 2, 95)
    }
    
    class func flatYellowColor() -> UIColor {
        return hsb(48, 99, 100)
    }
    
    class func flatBlackDarkColor() -> UIColor {
        return hsb(0, 0, 15)
    }
    
    class func flatBlueDarkColor() -> UIColor {
        return hsb(224, 56, 51)
    }
    
    class func flatBrownDarkColor() -> UIColor {
        return hsb(25, 45, 31)
    }
    
    class func flatCoffeeDarkColor() -> UIColor {
        return hsb(25, 34, 56)
    }
    
    class func flatForestGreenDarkColor() -> UIColor {
        return hsb(135, 44, 31)
    }
    
    class func flatGrayDarkColor() -> UIColor {
        return hsb(184, 10, 55)
    }
    
    class func flatGreenDarkColor() -> UIColor {
        return hsb(145, 78, 68)
    }
    
    class func flatLimeDarkColor() -> UIColor {
        return hsb(74, 81, 69)
    }
    
    class func flatMagentaDarkColor() -> UIColor {
        return hsb(282, 61, 68)
    }
    
    class func flatMaroonDarkColor() -> UIColor {
        return hsb(4, 68, 40)
    }
    
    class func flatMintDarkColor() -> UIColor {
        return hsb(168, 86, 63)
    }
    
    class func flatNavyBlueDarkColor() -> UIColor {
        return hsb(210, 45, 31)
    }
    
    class func flatOrangeDarkColor() -> UIColor {
        return hsb(24, 100, 83)
    }
    
    class func flatPinkDarkColor() -> UIColor {
        return hsb(327, 57, 83)
    }
    
    class func flatPlumDarkColor() -> UIColor {
        return hsb(300, 46, 31)
    }
    
    class func flatPowderBlueDarkColor() -> UIColor {
        return hsb(222, 28, 84)
    }
    
    class func flatPurpleDarkColor() -> UIColor {
        return hsb(253, 56, 64)
    }
    
    class func flatRedDarkColor() -> UIColor {
        return hsb(6, 78, 75)
    }
    
    class func flatSandDarkColor() -> UIColor {
        return hsb(42, 30, 84)
    }
    
    class func flatSkyBlueDarkColor() -> UIColor {
        return hsb(204, 78, 73)
    }
    
    class func flatTealDarkColor() -> UIColor {
        return hsb(196, 54, 45)
    }
    
    class func flatWatermelonDarkColor() -> UIColor {
        return hsb(358, 61, 85)
    }
    
    class func flatWhiteDarkColor() -> UIColor {
        return hsb(204, 5, 78)
    }
    
    class func flatYellowDarkColor() -> UIColor {
        return hsb(40, 100, 100)
    }
    
    class func flatColors() -> [UIColor]? {
        return [flatBlackColor(), flatBlackDarkColor(), flatBlueColor(), flatBlueDarkColor(), flatBrownColor(), flatBrownDarkColor(), flatCoffeeColor(), flatCoffeeDarkColor(), flatForestGreenColor(), flatForestGreenDarkColor(), flatGrayColor(), flatGrayDarkColor(), flatGreenColor(), flatGreenDarkColor(), flatLimeColor(), flatLimeDarkColor(), flatMagentaColor(), flatMagentaDarkColor(), flatMaroonColor(), flatMaroonDarkColor(), flatMintColor(), flatMintDarkColor(), flatNavyBlueColor(), flatNavyBlueDarkColor(), flatOrangeColor(), flatOrangeDarkColor(), flatPinkColor(), flatPinkDarkColor(), flatPlumColor(), flatPlumDarkColor(), flatPowderBlueColor(), flatPowderBlueDarkColor(), flatPurpleColor(), flatPurpleDarkColor(), flatRedColor(), flatRedDarkColor(), flatSandColor(), flatSandDarkColor(), flatSkyBlueColor(), flatSkyBlueDarkColor(), flatTealColor(), flatTealDarkColor(), flatWatermelonColor(), flatWatermelonDarkColor(), flatWhiteColor(), flatWhiteDarkColor(), flatYellowColor(), flatYellowDarkColor()]
    }
    
    //let darkGrey = UIColor(hexString: "#757575")
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
    
    
    //let purple = UIColor(hex: 0xAB47BC)
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    
    convenience init(hex: Int, alpha: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha:  CGFloat(alpha) / 255)
    }
    
    class func randomFlatColor() -> UIColor? {
        return flatColors()?.randomElement()!
    }
    
    class func randomColorInArray(_ colors: [UIColor]?) -> UIColor?{
        if colors?.count != nil {
            return colors?.randomElement()!
        }
        return nil
    }
    
    class func randomFlatColorExcludingColorsInArray(_ colors: [UIColor]?) -> UIColor? {
        
        if colors?.count == 0 {
            return nil
        }
        
        return colors?.filter{!flatColors()!.contains($0)}.randomElement()
    }
    
    class func contrastColor(_ backgroundColor: UIColor, _ returnFlat: Bool) -> UIColor {
        return UIColor.contrastingBlackOrWhiteColorOn(backgroundColor, isFlat: returnFlat, alpha: 1.0)
    }
    
    class func contrastingBlackOrWhiteColorOn(_ backgroundColor: UIColor, isFlat flat: Bool, alpha: CGFloat) -> UIColor {        
        //Calculate Luminance
        var luminance: CGFloat
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha1: CGFloat = 0.0
        backgroundColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha1)
        
        //Check if color is transparent
        if alpha == 0 {
            return UIColor.clear
        }
        
        // Relative luminance in colorimetric spaces - http://en.wikipedia.org/wiki/Luminance_(relative)
        red *= 0.2126
        green *= 0.7152
        blue *= 0.0722
        luminance = red + green + blue
        
        if flat == false {
            return (luminance > 0.6) ? rgba(r: 0, g: 0, b: 0, a: alpha) : rgba(r: 255, g: 255, b: 255, a: alpha)
        } else {
            return (luminance > 0.6) ? hsba(0, 0, 15, alpha) : hsba(192, 2, 95, alpha)
        }
    }
    
    func lighten(by percentage: CGFloat = 30.0) -> UIColor {
        return self.adjust(by: abs(percentage) ) ?? UIColor.black
    }
    
    func darken(by percentage: CGFloat = 30.0) -> UIColor {
        return self.adjust(by: -1 * abs(percentage) ) ?? UIColor.black
    }
    
    func adjust(by percentage: CGFloat = 30.0) -> UIColor? {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            return UIColor(red: min(red + percentage/100, 1.0),
                           green: min(green + percentage/100, 1.0),
                           blue: min(blue + percentage/100, 1.0),
                           alpha: alpha)
        } else {
            return nil
        }
    }
    
    func desaturate(by percentage: CGFloat) -> UIColor? {
        var hue: CGFloat = 0, sat: CGFloat = 0, bright: CGFloat = 0, alpha: CGFloat = 0
        if  self.getHue(&hue, saturation: &sat, brightness: &bright, alpha: &alpha) {
            return UIColor(hue: min(hue - percentage/100, 1.0),
                           saturation: min(sat - percentage/100, 1.0),
                           brightness: min(bright - percentage/100, 1.0),
                           alpha: alpha)
        } else {
            return nil
        }
        
    }
    
    func saturate(by percentage: CGFloat) -> UIColor? {
        var hue: CGFloat = 0, sat: CGFloat = 0, bright: CGFloat = 0, alpha: CGFloat = 0
        if  self.getHue(&hue, saturation: &sat, brightness: &bright, alpha: &alpha) {
            return UIColor(hue: min(hue + percentage/100, 1.0),
                           saturation: min(sat + percentage/100, 1.0),
                           brightness: min(bright + percentage/100, 1.0),
                           alpha: alpha)
        } else {
            return nil
        }
    }
    
    func getLightness(valueForL L: CGFloat?, valueForA A: CGFloat?, valueForB B: CGFloat?, alpha: CGFloat?) -> (L: CGFloat?, A: CGFloat?, B: CGFloat?, alpha: CGFloat?) {
        var L = L
        var A = A
        var B = B
        
        if responds(to: #selector(self.getRed(_:green:blue:alpha:))) {
            
            //Get RGB values from the input color
            var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
            var alpha1: CGFloat = 0
            getRed(&red, green: &green, blue: &blue, alpha: &alpha1)
            
            //Run our input color's RGB values through the XYZ algorithm to convert them into XYZ values
            let XYZValues = arrayOfXYZValues(forR: red, g: green, b: blue, a: alpha1)
            let X = CGFloat(Float(XYZValues.x))
            let Y = CGFloat(Float(XYZValues.y))
            let Z = CGFloat(Float(XYZValues.z))
            
            if L != nil && A != nil && B != nil {
                //Run our new XYZ values through our LAB algorithm to convert them into LAB values
                let LABValues = arrayOfLABValuesFor(x: X, y: Y, z: Z, alpha: alpha1)
                L = CGFloat(Float(LABValues.l))
                A = CGFloat(Float(LABValues.a))
                B = CGFloat(Float(LABValues.b))
            }
            
            return (L, A, B, alpha1)
        }
        
        return (nil, nil, nil, nil)
    }
    
    func rgbComponents() -> (red:Int, green:Int, blue:Int, alpha:Int)? {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = Int(fRed * 255.0)
            let iGreen = Int(fGreen * 255.0)
            let iBlue = Int(fBlue * 255.0)
            let iAlpha = Int(fAlpha * 255.0)
            
            return (red:iRed, green:iGreen, blue:iBlue, alpha:iAlpha)
        } else {
            // Could not extract RGBA components:
            return nil
        }
    }
    
    
    //MARK: Gradient Colors
    enum GradientDirection: Int {
        case topToBottom
        case leftToRight
        case bottomToTop
        case rightToLeft
        case topLeftToBottomRight
        case topRightToBottomLeft
        case bottomLeftToTopRight
        case bottomRightToTopLeft
    }
    
    class func gradientColor(view: UIView, colors: [UIColor], direction: GradientDirection) {
        var cgColors : [CGColor] = []
        
        for color in colors {
            cgColors.append(color.cgColor)
        }
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = cgColors
        gradientDirection(gradient: gradientLayer, direction: direction)
        view.layer.addSublayer(gradientLayer)
    }
    
    class func gradientDirection(gradient: CAGradientLayer, direction: GradientDirection) {
        switch direction.rawValue {
        case GradientDirection.topToBottom.rawValue:
            gradient.startPoint = CGPoint(x: 0.5, y:0.0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        case GradientDirection.bottomToTop.rawValue:
            gradient.startPoint = CGPoint(x: 0.5, y: 1.0)
            gradient.endPoint = CGPoint(x: 0.5, y: 0.0)
        case GradientDirection.leftToRight.rawValue:
            gradient.startPoint = CGPoint(x: 1.0, y: 0.5)
            gradient.endPoint = CGPoint(x: 0.0, y: 0.5)
        case GradientDirection.rightToLeft.rawValue:
            gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        case GradientDirection.topLeftToBottomRight.rawValue:
            gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        case GradientDirection.topRightToBottomLeft.rawValue:
            gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        case GradientDirection.bottomLeftToTopRight.rawValue:
            gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
        case GradientDirection.bottomRightToTopLeft.rawValue:
            gradient.startPoint = CGPoint(x: 1.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        default:    // Default to TopToBottom
            gradient.startPoint = CGPoint(x: 0.5, y:0.0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        }
    }
    
    //    func flatten() -> UIColor? {
    //        return self.flatVersion(of: self)
    //    }
    //
    //    func flatVersion(of color: UIColor?) -> UIColor? {
    //        var colorAlpha: CGFloat = 0
    //        color?.getLightness(valueForL: nil, valueForA: nil, valueForB: nil, alpha: colorAlpha)
    //        colorAlpha = colorAlpha > 0.0 ? colorAlpha : 1.0
    //        //Return flat version with default alpha of 1.0
    //        return self.flatVersion(of: color, with: colorAlpha)
    //    }
    //
    //    func flatVersion(of color: UIColor?, with alpha: CGFloat) -> UIColor? {
    //        var color = color
    //
    //        //Create CGFloats to hold our color values
    //        var L: CGFloat
    //        var A: CGFloat
    //        var B: CGFloat
    //        var alpha1: CGFloat
    //
    //        //Get LAB values for our color
    //        color?.getLightness(valueForL: L, valueForA: A, valueForB: B, alpha: alpha1)
    //
    //        if color?.getLightness(valueForL: L, valueForA: A, valueForB: B, alpha: alpha1) == nil {
    //            return UIColor.black
    //        }
    //
    //
    //        //Find the nearest flat color
    //        return self.nearestFlatColorFor(L: L, a: A, b: B, alpha: alpha1)
    //        //return self.nearestFlatColorFor(forL: L, a: A, b: B, alpha: alpha)
    //    }
    //
    //    func nearestFlatColorFor (L l1: CGFloat, a a1: CGFloat, b b1: CGFloat, alpha: CGFloat) -> UIColor? {
    //
    //        guard let allColors = UIColor.flatColors() else { return .black }
    //
    //        //Keep track of our index
    //        var index: Int = 0
    //
    //        //Start with a random big number to make sure the first comparison gets saved.
    //        var smallestDistance: Float = 1000000
    //        var previousDistance: Float = 1000000
    //        var currentDistance: Float
    //
    //        //Our values
    //        var l2: CGFloat
    //        var a2: CGFloat
    //        var b2: CGFloat
    //
    //        //We're interested in the color with values returning the smallest sum of total differences so we need to cross reference our input color's values with every flat color's values
    //        for i in 0..<allColors.count {
    //
    //            //Check that index is not zero
    //            if i != 0 {
    //                //Extract LAB values from colors in array and store it as the previous index
    //                (allColors[i - 1]).getLightness(valueForL: l2, valueForA: a2, valueForB: b2, alpha: nil)
    //
    //                previousDistance = UIColor.totalSumOfDifferencesFroml1(l1, l2: l2, a1: a1, a2: a2, b1: b1, b2: b2)
    //            }
    //
    //            //Extract LAB values from colors in array and store it as the current index
    //            allColors[i].getLightness(valueForL: l2, valueForA: a2, valueForB: b2, alpha: nil)
    //
    //            currentDistance = UIColor.totalSumOfDifferencesFroml1(l1, l2: l2, a1: a1, a2: a2, b1: b1, b2: b2)
    //
    //            //We're only interested in the smallest difference
    //            if currentDistance < previousDistance {
    //                if currentDistance < smallestDistance {
    //                    smallestDistance = currentDistance
    //                    index = i
    //                }
    //            }
    //        }
    //
    //
    //        //Collect the RGB Values of the color where the smallest difference was found
    //        var red: CGFloat
    //        var green: CGFloat
    //        var blue: CGFloat
    //        allColors[index].getRed(&red, green: &green, blue: &blue, alpha: nil)
    //
    //        //Return the closest flat color
    //        return rgba(r: red * 255, g: green * 255, b: blue * 255, a: alpha)
    //
    //    }
    
    //Calculate the total sum of differences - Euclidian distance
    //CyaneaOctopus is now using the CIEDE2000 formula to calculate distances between 2 colors.
    //More info: http://en.wikipedia.org/wiki/Color_difference
    
    //    class func totalSumOfDifferencesFroml1(_ L1: CGFloat, l2 L2: CGFloat, a1 A1: CGFloat, a2 A2: CGFloat, b1 B1: CGFloat, b2 B2: CGFloat) -> Float {
    //
    //        //Get C Values in LCH from LAB Values
    //        let C1 = sqrt(pow(A1, 2) + pow(B1, 2))
    //        let C2 = sqrt(pow(A2, 2) + pow(B2, 2))
    //
    //        //CIE Weights
    //        let KL: CGFloat = 1
    //        let KC: CGFloat = 1
    //        let KH: CGFloat = 1
    //
    //        //Variables specifically set for CIE:2000
    //        let DeltaPrimeL: CGFloat = L2 - L1
    //        let MeanL: CGFloat = (L1 + L2) / 2
    //        let MeanC: CGFloat = (C1 + C2) / 2
    //        let A1Prime: CGFloat = A1 + A1 / 2 * (1 - sqrt(pow(MeanC, 7.0) / (pow(MeanC, 7.0) + pow(25.0, 7.0))))
    //        let A2Prime: CGFloat = A2 + A2 / 2 * (1 - sqrt(pow(MeanC, 7.0) / (pow(MeanC, 7.0) + pow(25.0, 7.0))))
    //        let C1Prime = sqrt(pow(A1Prime, 2) + pow(B1, 2))
    //        let C2Prime = sqrt(pow(A2Prime, 2) + pow(B2, 2))
    //        let DeltaPrimeC: CGFloat = C1Prime - C2Prime
    //        let DeltaC: CGFloat = C1 - C2
    //        let MeanCPrime: CGFloat = (C1Prime + C2Prime) / 2
    //        let H1Prime = fmodf(Float(atan2(B1, A1Prime)), (360.0 * .pi / 180))
    //        let H2Prime = fmodf(Float(atan2(B2, A2Prime)), (360.0 * .pi / 180))
    //
    //        //Run everything through our △H' Function
    //        var hDeltaPrime: CGFloat = 0
    //        if abs(Float(H1Prime - H2Prime)) <= (180.0 * .pi / 180) {
    //
    //            hDeltaPrime = CGFloat(H2Prime - H1Prime)
    //        } else if H2Prime <= H1Prime {
    //
    //            hDeltaPrime = CGFloat((H2Prime - H1Prime) + (360.0 * .pi / 180))
    //        } else {
    //
    //            hDeltaPrime = CGFloat((H2Prime - H1Prime) - (360.0 * .pi / 180))
    //        }
    //
    //        let deltaHPrime: CGFloat = 2 * (sqrt(C1Prime * C2Prime)) * sin(hDeltaPrime / 2)
    //
    //        //Get Mean H' Value
    //        var MeanHPrime: CGFloat = 0
    //        if abs(Float(H1Prime - H2Prime)) > (180.0 * .pi / 180) {
    //
    //            MeanHPrime = CGFloat((H1Prime + H2Prime + (360.0 * .pi / 180)) / 2)
    //        } else {
    //
    //            MeanHPrime = CGFloat((H1Prime + H2Prime) / 2)
    //        }
    //
    //        let T: CGFloat = 1 - 0.17 * cos(MeanHPrime - (30.0 * .pi / 180)) + 0.24 * cos(2 * MeanHPrime) + 0.32 * cos(3 * MeanHPrime + (6.0 * .pi / 180)) - 0.20 * cos(4 * MeanHPrime - (63.0 * .pi / 180))
    //
    //        let SL: CGFloat = 1 + (0.015 * pow((MeanL - 50), 2)) / sqrt(20 + pow((MeanL - 50), 2))
    //        let SC: CGFloat = 1 + 0.045 * MeanCPrime
    //        let SH: CGFloat = 1 + 0.015 * MeanCPrime * T
    //
    //        let RT: CGFloat = -2 * sqrt(pow(MeanCPrime, 7) / (pow(MeanCPrime, 7) + pow(25.0, 7))) * sin((60.0 * .pi / 180) * exp(-1 * pow((MeanCPrime - (275.0 * .pi / 180)) / (25.0 * .pi / 180), 2)))
    //
    //        //Get total difference
    ////        let TotalDifference = sqrt(pow((Int(DeltaPrimeL) / (KL * SL)), 2) + pow((Int(DeltaPrimeC) / (KC * SC)), 2) + pow((deltaHPrime / (KH * SH)), 2) + RT * (Int(DeltaC) / (KC * SC)) * (deltaHPrime / (KH * SH)))
    //
    //        let TotalDifference = 0
    //
    //
    ////        let TotalDifference = sqrt(pow((Int(DeltaPrimeL) / (KL * SL)), 2)
    ////
    ////            + pow((Int(DeltaPrimeC) / (KC * SC)), 2)
    ////
    ////
    ////            + pow((deltaHPrime / (KH * SH)), 2)
    ////            + RT
    ////
    ////            * (Int(DeltaC) / (KC * SC))
    ////            * (deltaHPrime / (KH * SH)))
    //
    //
    //
    //
    //        return Float(TotalDifference)
    //
    //    }
    //    
    
    
}
