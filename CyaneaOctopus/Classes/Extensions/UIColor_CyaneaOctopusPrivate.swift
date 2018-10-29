import UIKit
import CoreGraphics

public extension UIColor  {
    
    // A modified version of https://stackoverflow.com/a/48281568/995931
    // getColorsFromImage(image, at: [pt1, pt2])
    // Where pt1 and pt2 are CGPoints
    class func getColorsFromImage(_ image: UIImage?, at points: [CGPoint]) -> [UIColor?]? {
        
        //Encapsulate our image
        guard let imageRef = image?.cgImage else { print("getColorsFromImage failed: Could not conver to CGImage"); return nil }
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bytesPerPixel = 4
        let bytesPerRow = bytesPerPixel * imageRef.width
        let bitsPerComponent = 8
        let bitmapInfo: UInt32 = CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue
        
        guard let context = CGContext(data: nil, width: imageRef.width, height: imageRef.height, bitsPerComponent: bitsPerComponent, bytesPerRow: bytesPerRow, space: colorSpace, bitmapInfo: bitmapInfo),
            let ptr = context.data?.assumingMemoryBound(to: UInt8.self) else {
                return nil
        }
        
        context.draw(imageRef, in: CGRect(x: 0, y: 0, width: imageRef.width, height: imageRef.height))
        
        return points.map { (p) -> UIColor? in
            let i = bytesPerRow * Int(p.y) + bytesPerPixel * Int(p.x)
            
            let a = CGFloat(ptr[i + 3]) / 255.0
            let r = (CGFloat(ptr[i]) / a) / 255.0
            let g = (CGFloat(ptr[i + 1]) / a) / 255.0
            let b = (CGFloat(ptr[i + 2]) / a) / 255.0
            
            return  UIColor(red: r, green: g, blue: b, alpha: a)
        }
    }
    
    
    
    // MARK: - Internal Helper Methods
    func arrayOfXYZValues(forR red: CGFloat, g green: CGFloat, b blue: CGFloat, a alpha: CGFloat) -> (x: CGFloat, y: CGFloat, z: CGFloat, alpha: CGFloat)  {
        let red = red
        let green = green
        let blue = blue
        
        /*
         Let's begin by converting from RGB to sRGB.
         We're going to use the Reverse Transformation Equation.
         http://en.wikipedia.org/wiki/SRGB
         */
        
        var sRGB: ((_ C: CGFloat) -> Void)?
        sRGB = { C in
            var C = C
            if Double( C ) > 0.04045 {
                C = (CGFloat)(pow(((Double(C) + 0.055) / (1 + 0.055)), 2.40))
            } else {
                C /= 12.92
            }
        }
        
        sRGB?(red)
        sRGB?(green)
        sRGB?(blue)
        
        /*
         Now we're going to convert to XYZ values, using a matrix multiplication of the linear values
         http://upload.wikimedia.org/math/4/3/3/433376fc18cccd887758beffb7e7c625.png
         */
        
        var X: CGFloat = (red * 0.4124) + (green * 0.3576) + (blue * 0.1805)
        var Y: CGFloat = (red * 0.2126) + (green * 0.7152) + (blue * 0.0722)
        var Z: CGFloat = (red * 0.0193) + (green * 0.1192) + (blue * 0.9505)
        
        X *= 100
        Y *= 100
        Z *= 100
        
        return (X, Y, Z, alpha)
    }
    
    func arrayOfLABValuesFor(x X: CGFloat, y Y: CGFloat, z Z: CGFloat, alpha: CGFloat) -> (l: CGFloat, a: CGFloat, b: CGFloat, alpha: CGFloat) {
        var X = X
        var Y = Y
        var Z = Z
        
        /*
         The corresponding original XYZ values are such that white is D65 with unit luminance (X,Y,Z = 0.9505, 1.0000, 1.0890).
         Calculations are also to assume the 2° standard colorimetric observer.
         D65: http://en.wikipedia.org/wiki/CIE_Standard_Illuminant_D65
         Standard Colorimetric Observer: http://en.wikipedia.org/wiki/Standard_colorimetric_observer#CIE_standard_observer
         
         Since we mutiplied our XYZ values by 100 to produce a percentage we should also multiply our unit luminance values by 100.
         */
        
        X /= 0.9505 * 100
        Y /= 1.0000 * 100
        Z /= 1.0890 * 100
        
        /*
         Next we need to use the forward transformation function for CIELAB-CIEXYZ conversions
         Function: http://upload.wikimedia.org/math/e/5/1/e513d25d50d406bfffb6ed3c854bd8a4.png
         */
        
        var XYZtoLAB: ((_ f: CGFloat) -> Void)?
        
        XYZtoLAB = { f in
            var f = f
            
            if (f > pow((6.0 / 29.0), 3.0)) {
                f = pow(f, 1.0 / 3.0)
            } else {
                let nf = (f + 4) / 29.0
                f = ( (1 / 3) * pow((29.0 / 6.0), 2.0) * nf )
            }
        }
        
        XYZtoLAB?(X)
        XYZtoLAB?(Y)
        XYZtoLAB?(Z)
        
        /*
         Next we get our LAB values using the following equations and the results from the function above
         http://upload.wikimedia.org/math/0/0/6/006164b74314e2fdcdc34ac9d0aa6fe4.png
         */
        
        let L: CGFloat = (116 * Y) - 16
        let A: CGFloat = 500 * (X - Y)
        let B: CGFloat = 200 * (Y - Z)
        
        
        return (L, A, B, alpha)
    }
    
    
    
    
}
