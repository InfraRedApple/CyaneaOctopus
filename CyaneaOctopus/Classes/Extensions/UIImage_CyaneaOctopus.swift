//
//  UIImage_CyaneaOctopus.swift
//  CyaneaOctopus
//
//  Created by Adam McElhaney on 11/8/18.
//

import UIKit

public extension UIImage {
    
    /// This will tint an image with the desired color. Non-greyscale images. Whites and Black preserved.
    ///
    /// - Parameter tintColor: The color to tint the image with
    /// - Returns: A tinted UIImage
    public func tint(_ tintColor: UIColor) -> UIImage {
        return processImage { context, rect in
            // draw black background - workaround to preserve color of partially transparent pixels
            context.setBlendMode(.normal)
            UIColor.black.setFill()
            context.fill(rect)
            
            // draw original image
            context.setBlendMode(.normal)
            context.draw(self.cgImage!, in: rect)
            
            // tint image (loosing alpha) - the luminosity of the original image is preserved
            context.setBlendMode(.color)
            tintColor.setFill()
            context.fill(rect)
            
            // mask by alpha values of original image
            context.setBlendMode(.destinationIn)
            context.draw(self.cgImage!, in: rect)
        }
    }
    

    /// Colors the alpha channel wti the desired color.
    ///
    /// - Parameter fillColor: The desired color
    /// - Returns: Alpha colored image
    public func overlayColor(_ fillColor: UIColor) -> UIImage {
        return processImage { context, rect in
            // draw tint color
            context.setBlendMode(.normal)
            fillColor.setFill()
            context.fill(rect)
            
            // mask by alpha values of original image
            context.setBlendMode(.destinationIn)
            context.draw(self.cgImage!, in: rect)
        }
    }
    
    private func processImage( draw: (CGContext, CGRect) -> ()) -> UIImage {
        
        // using scale correctly preserves retina images
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let context: CGContext! = UIGraphicsGetCurrentContext()
        assert(context != nil)
        
        // Rotaes image correctly.
        context.translateBy(x: 0, y: size.height)
        context.scaleBy(x: 1.0, y: -1.0)
        
        let rect = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        
        draw(context, rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}
