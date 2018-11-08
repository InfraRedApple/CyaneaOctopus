//
//  UIView_CyaneaOctopus.swift
//  CyaneaOctopus
//
//  Created by Adam McElhaney on 10/27/18.
//  Copyright © 2018 Adam McElhaney. All rights reserved.
//

import UIKit

extension UIView {
    public func isTopViewInWindow() -> Bool {
        
        if window == nil {
            return false
        }
        
        let centerPointInSelf = CGPoint(x: bounds.midX, y: bounds.midY)
        
        let centerPointOfSelfInWindow: CGPoint = convert(centerPointInSelf, to: window)
        
        let view: UIView? = window?.findTopMostView(for: centerPointOfSelfInWindow)
        let isTopMost: Bool = view == self || view?.isDescendant(of: self) ?? false
        
        return isTopMost
    }
    
    public func findTopMostView(for point: CGPoint) -> UIView? {
        
        for subview in subviews {
            if !subview.isHidden && subview.frame.contains(point) && subview.alpha > 0.01 {
                return subview.findTopMostView(for:  convert(point, to: subview))
            }
        }
        
        return self
    }
    
}
