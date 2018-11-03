//
//  CyaneaOctopus.swift
//  TestColor
//
//  Created by Adam McElhaney on 10/27/18.
//  Copyright © 2018 Adam McElhaney. All rights reserved.
//

import Foundation
import UIKit


/**
 *  Specifies how text-based UI elements and other content such as switch knobs, should be colored.
 *
 *  @since 2.0
 */
enum UIContentStyle {
    /**
     *  Automatically chooses and colors text-based elements with the shade that best contrasts its @c backgroundColor.
     *
     *  @since 2.0
     */
    case contrast
    /**
     *  Colors text-based elements using a light shade.
     *
     *  @since 2.0
     */
    case light
    /**
     *  Colors text-based elements using a light shade.
     *
     *  @since 2.0
     */
    case dark
}


class CyaneaOctopus : NSObject {
    
    //
    //    var statusBarStyle : UIStatusBarStyle = .lightContent
    //
    //    var preferredStatusBarStyle: UIStatusBarStyle {
    //        return statusBarStyle
    //    }
    //
    
    /**
     *  Set a global theme using a primary color and the specified content style.
     *
     *  @param primaryColor The primary color to theme all controllers with.
     *  @param contentStyle The contentStyle.
     *
     *  @note By default the secondary color will be a darker shade of the specified primary color.
     *
     *  @since 1.0
     */
    @available(iOS 9.0, *)
    class func setGlobalThemeUsingPrimaryColor(_ primaryColor: UIColor, with contentStyle: UIContentStyle) {
        
        //        if contentStyle == .contrast {
        //            if UIColor.contrastColor(primaryColor, true) != FlatWhite {
        //              CyaneaOctopus().statusBarStyle = .default
        //            }
        //        } else if contentStyle != .light {
        //            CyaneaOctopus().statusBarStyle = .default
        //        }
        
        
        self.customizeBarButtonItem(withPrimaryColor: primaryColor, contentStyle: contentStyle)
        self.customizeButton(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeNavigationBar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizePageControl(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeProgressView(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSearchBar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSegmentedControl(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSlider(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeStepper(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSwitch(withPrimaryColor: primaryColor)
        self.customizeTabBar(withBarTintColor: FlatWhite, andTintColor: primaryColor)
        self.customizeToolbar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeImagePickerController(withPrimaryColor: primaryColor, with: contentStyle)
    }
    
    /**
     *  Set a global theme using a primary color, secondary color, and the specified content style.
     *
     *  @param primaryColor   The primary color to theme all controllers with.
     *  @param secondaryColor The secondary color to theme all controllers with.
     *  @param contentStyle   The contentStyle.
     *
     *  @since 1.0
     */
    @available(iOS 9.0, *)
    class func setGlobalThemeUsingPrimaryColor(_ primaryColor: UIColor, withSecondaryColor secondaryColor: UIColor?, andContentStyle contentStyle: UIContentStyle) {
        
        //        if contentStyle == .contrast {
        //            if UIColor.contrastColor(primaryColor, true) != FlatWhite {
        //                CyaneaOctopus().statusBarStyle = .default
        //            }
        //        } else if contentStyle != .light {
        //            CyaneaOctopus().statusBarStyle = .default
        //        }
        
        self.customizeBarButtonItem(withPrimaryColor: primaryColor, contentStyle: contentStyle)
        self.customizeButton(withPrimaryColor: primaryColor, secondaryColor: secondaryColor, with: contentStyle)
        self.customizeNavigationBar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizePageControl(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeProgressView(withPrimaryColor: primaryColor, andSecondaryColor: secondaryColor)
        self.customizeSearchBar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSegmentedControl(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSlider(withPrimaryColor: primaryColor, andSecondaryColor: secondaryColor)
        self.customizeStepper(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSwitch(withPrimaryColor: primaryColor, andSecondaryColor: secondaryColor)
        self.customizeTabBar(withBarTintColor: FlatWhite, andTintColor: primaryColor)
        self.customizeToolbar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeImagePickerController(withPrimaryColor: primaryColor, with: contentStyle)
    }
    
    /**
     *  Set a global theme using a primary color, secondary color, font name, and the specified content style.
     *
     *  @param primaryColor   The primary color to theme all controllers with.
     *  @param secondaryColor The secondary color to theme all controllers with.
     *  @param fontName       The default font for all text-based UI elements.
     *  @param contentStyle   The contentStyle.
     *
     *  @since 1.0
     */
    @available(iOS 9.0, *)
    class func setGlobalThemeUsingPrimaryColor(_ primaryColor: UIColor, withSecondaryColor secondaryColor: UIColor?, usingFontName fontName: String, andContentStyle contentStyle: UIContentStyle) {
        
        //        if contentStyle == .contrast {
        //            if UIColor.contrastColor(primaryColor, true) != FlatWhite {
        //                CyaneaOctopus().statusBarStyle = .default
        //            }
        //        } else if contentStyle != .light {
        //            CyaneaOctopus().statusBarStyle = .default
        //        }
        
        
        UILabel.appearance().substituteFontName = fontName
        UIButton.appearance().substituteFontName = fontName
        
        self.customizeNavigationBar(withBarColor: primaryColor, textColor: UIColor.contrastColor(primaryColor, true), fontName: fontName, fontSize: 20, buttonColor: UIColor.contrastColor(primaryColor, true))
        self.customizeBarButtonItem(withPrimaryColor: primaryColor, fontName: fontName, fontSize: 18, contentStyle: contentStyle)
        self.customizeSegmentedControl(withPrimaryColor: primaryColor, withFontName: fontName, withFontSize: 14, with: contentStyle)
        self.customizeButton(withPrimaryColor: primaryColor, secondaryColor: secondaryColor, with: contentStyle)
        self.customizePageControl(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeProgressView(withPrimaryColor: primaryColor, andSecondaryColor: secondaryColor)
        self.customizeSearchBar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSlider(withPrimaryColor: primaryColor, andSecondaryColor: secondaryColor)
        self.customizeStepper(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeSwitch(withPrimaryColor: primaryColor, andSecondaryColor: secondaryColor)
        self.customizeTabBar(withBarTintColor: FlatWhite, andTintColor: primaryColor)
        self.customizeToolbar(withPrimaryColor: primaryColor, with: contentStyle)
        self.customizeImagePickerController(withPrimaryColor: primaryColor, with: contentStyle)
        
    }
    
    
    // MARK: - UIBarButtonItem
    @available(iOS 9.0, *)
    class func customizeBarButtonItem(withPrimaryColor primaryColor: UIColor?, contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor =  UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        if let aColor = primaryColor {
            UIBarButtonItem.appearance().tintColor = aColor
        }
        if let aColor = contentColor {
            UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self, UINavigationBar.self, UIToolbar.self]).tintColor = aColor
        }
        
    }
    
    @available(iOS 9.0, *)
    class func customizeBarButtonItem(withPrimaryColor primaryColor: UIColor?, fontName: String?, fontSize: Float, contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor =  UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        if let aColor = primaryColor {
            UIBarButtonItem.appearance().tintColor = aColor
        }
        
        if let aColor = contentColor {
            UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self, UINavigationBar.self, UIToolbar.self]).tintColor = aColor
        }
        
        if UIFont(name: fontName ?? "", size: CGFloat(fontSize)) != nil {
            if let aColor = contentColor, let aSize = UIFont(name: fontName ?? "", size: CGFloat(fontSize)) {
                UIBarButtonItem.appearance(whenContainedInInstancesOf: [UINavigationBar.self.self]).setTitleTextAttributes([NSAttributedString.Key.foregroundColor: aColor, NSAttributedString.Key.font: aSize], for: .normal)
            }
        }
    }
    
    // MARK: - UIButton
    @available(iOS 9.0, *)
    class func customizeButton(withPrimaryColor primaryColor: UIColor?, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        if let aColor = contentColor {
            UIButton.appearance().tintColor = aColor
        }
        UIButton.appearance().backgroundColor = primaryColor
        
        if let aColor = contentColor {
            UIButton.appearance(whenContainedInInstancesOf: [UISearchBar.self, UINavigationBar.self, UIToolbar.self]).tintColor = aColor
        }
        UIButton.appearance(whenContainedInInstancesOf: [UISearchBar.self, UINavigationBar.self, UIToolbar.self]).backgroundColor = ClearColor
        
        if let aColor = primaryColor {
            UIButton.appearance(whenContainedInInstancesOf: [UIStepper.self]).tintColor = aColor
        }
        UIButton.appearance(whenContainedInInstancesOf: [UIStepper.self]).backgroundColor = ClearColor
        
        UIButton.appearance().setTitleShadowColor(ClearColor, for: .normal)
    }
    
    @available(iOS 9.0, *)
    class func customizeButton(withPrimaryColor primaryColor: UIColor?, secondaryColor: UIColor?, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        var secondaryContentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
            secondaryContentColor = UIColor.contrastColor(secondaryColor!, false)
        case .light:
            contentColor = UIColor.white
            secondaryContentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
            secondaryContentColor = FlatBlackDark
        }
        
        if let aColor = secondaryContentColor {
            UIButton.appearance().tintColor = aColor
        }
        UIButton.appearance().backgroundColor = secondaryColor
        
        if let aColor = contentColor {
            UIButton.appearance(whenContainedInInstancesOf: [UISearchBar.self, UINavigationBar.self, UIToolbar.self]).tintColor = aColor
        }
        UIButton.appearance(whenContainedInInstancesOf: [UISearchBar.self, UINavigationBar.self, UIToolbar.self]).backgroundColor = ClearColor
        
        if let aColor = primaryColor {
            UIButton.appearance(whenContainedInInstancesOf: [UIStepper.self]).tintColor = aColor
        }
        UIButton.appearance(whenContainedInInstancesOf: [UIStepper.self]).backgroundColor = ClearColor
        
        UIButton.appearance().setTitleShadowColor(ClearColor, for: .normal)
    }
    
    // MARK: - UIImagePickerController
    @available(iOS 9.0, *)
    class func customizeImagePickerController(withPrimaryColor primaryColor: UIColor?, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UIButton.appearance(whenContainedInInstancesOf: [UIView.self, UIImagePickerController.self, UINavigationBar.self, UIImagePickerController.self]).backgroundColor = ClearColor
        UIButton.appearance(whenContainedInInstancesOf: [UIView.self, UIImagePickerController.self]).tintColor = ClearColor
        
        
        if let aColor = contentColor {
            UIButton.appearance(whenContainedInInstancesOf: [UINavigationBar.self, UIImagePickerController.self]).tintColor = aColor
        }
        UIButton.appearance(whenContainedInInstancesOf: [UITableViewCell.self, UIImagePickerController.self]).backgroundColor = ClearColor
    }
    
    
    // MARK: - UILabel
    @available(iOS 9.0, *)
    class func customizeLabel(withPrimaryColor primaryColor: UIColor?, fontName: String?, fontSize: CGFloat, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        if let aColor = contentColor {
            UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self, UIToolbar.self]).textColor = aColor
        }
        
        guard  let fontName = fontName else { return }
        UILabel.appearance().font = UIFont(name: fontName, size: fontSize)
        UILabel.appearance(whenContainedInInstancesOf: [UITextField.self]).font = UIFont(name: fontName, size: 14)
        UILabel.appearance(whenContainedInInstancesOf: [UIButton.self]).font = UIFont(name: fontName, size: 18)
        
    }
    
    
    // MARK: - UINavigationBar
    @available(iOS 9.0, *)
    class  func customizeNavigationBar(withPrimaryColor primaryColor: UIColor?, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UINavigationBar.appearance().barTintColor = primaryColor
        
        if let aColor = contentColor {
            UINavigationBar.appearance().tintColor = aColor
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: aColor]
        }
        UINavigationBar.appearance().shadowImage = UIImage()
        //    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault]
    }
    
    @available(iOS 9.0, *)
    class func customizeNavigationBar(withBarColor barColor: UIColor?, textColor: UIColor?, buttonColor: UIColor?) {
        
        UINavigationBar.appearance().barTintColor = barColor
        if let aColor = buttonColor {
            UINavigationBar.appearance().tintColor = aColor
        }
        if let aColor = textColor {
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: aColor]
        }
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    @available(iOS 9.0, *)
    class  func customizeNavigationBar(withBarColor barColor: UIColor?, textColor: UIColor?, fontName: String?, fontSize: CGFloat, buttonColor: UIColor?) {
        
        UINavigationBar.appearance().barTintColor = barColor
        if let aColor = buttonColor {
            UINavigationBar.appearance().tintColor = aColor
        }
        UINavigationBar.appearance().shadowImage = UIImage()
        //    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault]
        
        if UIFont(name: fontName ?? "", size: fontSize) != nil {
            if let aColor = textColor, let aSize = UIFont(name: fontName ?? "", size: fontSize) {
                UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: aColor, NSAttributedString.Key.font: aSize]
            }
        }
    }
    
    
    // MARK: - UIPageControl
    @available(iOS 9.0, *)
    class  func customizePageControl(withPrimaryColor primaryColor: UIColor, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UIPageControl.appearance().currentPageIndicatorTintColor = primaryColor
        UIPageControl.appearance().pageIndicatorTintColor = primaryColor.withAlphaComponent(0.4)
        UIPageControl.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).currentPageIndicatorTintColor = contentColor
        UIPageControl.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).pageIndicatorTintColor = contentColor?.withAlphaComponent(0.4)
        UIPageControl.appearance(whenContainedInInstancesOf: [UIToolbar.self]).currentPageIndicatorTintColor = contentColor
        UIPageControl.appearance(whenContainedInInstancesOf: [UIToolbar.self]).pageIndicatorTintColor = contentColor?.withAlphaComponent(0.4)
    }
    
    
    // MARK: - UIProgressView
    @available(iOS 9.0, *)
    class  func customizeProgressView(withPrimaryColor primaryColor: UIColor, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UIProgressView.appearance().progressTintColor = primaryColor
        UIProgressView.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).progressTintColor = contentColor
        UIProgressView.appearance(whenContainedInInstancesOf: [UIToolbar.self]).progressTintColor = contentColor
        UIProgressView.appearance().trackTintColor = UIColor.lightGray
        UIProgressView.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).trackTintColor = primaryColor.darken(by: 0.25)
        UIProgressView.appearance(whenContainedInInstancesOf: [UIToolbar.self]).trackTintColor = primaryColor.darken(by: 0.25)
    }
    
    @available(iOS 9.0, *)
    class func customizeProgressView(withPrimaryColor primaryColor: UIColor, andSecondaryColor secondaryColor: UIColor?) {
        
        UIProgressView.appearance().progressTintColor = secondaryColor
        UIProgressView.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).progressTintColor = secondaryColor
        UIProgressView.appearance(whenContainedInInstancesOf: [UIToolbar.self]).progressTintColor = secondaryColor
        UIProgressView.appearance().trackTintColor = UIColor.lightGray
        UIProgressView.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).trackTintColor = primaryColor.darken(by: 0.25)
        UIProgressView.appearance(whenContainedInInstancesOf: [UIToolbar.self]).trackTintColor = primaryColor.darken(by: 0.25)
    }
    
    
    // MARK: - UISearchBar
    @available(iOS 9.0, *)
    class  func customizeSearchBar(withPrimaryColor primaryColor: UIColor, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UISearchBar.appearance().barTintColor = primaryColor
        UISearchBar.appearance().backgroundColor = primaryColor
        if let aColor = contentColor {
            UISearchBar.appearance().tintColor = aColor
        }
        UISearchBar.appearance().setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
    }
    
    // MARK: - UISegmentedControl
    @available(iOS 9.0, *)
    class  func customizeSegmentedControl(withPrimaryColor primaryColor: UIColor, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UISegmentedControl.appearance().tintColor = primaryColor
        UISegmentedControl.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).tintColor = contentColor
        UISegmentedControl.appearance(whenContainedInInstancesOf: [UIToolbar.self]).tintColor = contentColor
    }
    
    @available(iOS 9.0, *)
    class func customizeSegmentedControl(withPrimaryColor primaryColor: UIColor, withFontName fontName: String?, withFontSize fontSize: CGFloat, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
            
        }
        
        
        UISegmentedControl.appearance().tintColor = primaryColor
        
        if let aColor = contentColor {
            UISegmentedControl.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).tintColor = aColor
        }
        if let aColor = contentColor {
            UISegmentedControl.appearance(whenContainedInInstancesOf: [UIToolbar.self]).tintColor = aColor
        }
        
        let font = UIFont(name: fontName ?? "", size: fontSize)
        if font != nil {
            if let aFont = font {
                UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.font: aFont], for: .normal)
            }
        }
    }
    
    // MARK: - UISlider
    @available(iOS 9.0, *)
    class func customizeSlider(withPrimaryColor primaryColor: UIColor, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        UISlider.appearance().minimumTrackTintColor = primaryColor
        UISlider.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).minimumTrackTintColor = contentColor
        UISlider.appearance(whenContainedInInstancesOf: [UIToolbar.self]).minimumTrackTintColor = contentColor
        UISlider.appearance().maximumTrackTintColor = UIColor.lightGray
        UISlider.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).maximumTrackTintColor = primaryColor.darken(by: 0.25)
        UISlider.appearance(whenContainedInInstancesOf: [UIToolbar.self]).maximumTrackTintColor = primaryColor.darken(by: 0.25)
        
        UISlider.appearance().thumbTintColor = primaryColor
        UISlider.appearance(whenContainedInInstancesOf: [UIToolbar.self]).thumbTintColor = contentColor
    }
    
    @available(iOS 9.0, *)
    class func customizeSlider(withPrimaryColor primaryColor: UIColor, andSecondaryColor secondaryColor: UIColor?) {
        
        UISlider.appearance().minimumTrackTintColor = secondaryColor
        UISlider.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).minimumTrackTintColor = secondaryColor
        UISlider.appearance(whenContainedInInstancesOf: [UIToolbar.self]).minimumTrackTintColor = secondaryColor
        UISlider.appearance().maximumTrackTintColor = UIColor.lightGray
        UISlider.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).maximumTrackTintColor = primaryColor.darken(by: 0.25)
        UISlider.appearance(whenContainedInInstancesOf: [UIToolbar.self]).maximumTrackTintColor = primaryColor.darken(by: 0.25)
        
        UISlider.appearance().thumbTintColor = secondaryColor
        UISlider.appearance(whenContainedInInstancesOf: [UIToolbar.self]).thumbTintColor = UIColor.contrastColor(primaryColor, false)
    }
    
    
    // MARK: - UIStepper
    @available(iOS 9.0, *)
    class func customizeStepper(withPrimaryColor primaryColor: UIColor?, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = UIColor.white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        if let aColor = primaryColor {
            UIStepper.appearance().tintColor = aColor
        }
        if let aColor = contentColor {
            UIStepper.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).tintColor = aColor
        }
        if let aColor = contentColor {
            UIStepper.appearance(whenContainedInInstancesOf: [UIToolbar.self]).tintColor = aColor
        }
    }
    
    // MARK: - UISwitch
    @available(iOS 9.0, *)
    class  func customizeSwitch(withPrimaryColor primaryColor: UIColor) {
        
        UISwitch.appearance().onTintColor = primaryColor
        UISwitch.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).onTintColor = primaryColor.darken(by: 0.25)
        UISwitch.appearance(whenContainedInInstancesOf: [UIToolbar.self]).onTintColor = primaryColor.darken(by: 0.25)
    }
    
    @available(iOS 9.0, *)
    class  func customizeSwitch(withPrimaryColor primaryColor: UIColor, andSecondaryColor secondaryColor: UIColor?) {
        
        UISwitch.appearance().onTintColor = secondaryColor
        UISwitch.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).onTintColor = secondaryColor
        UISwitch.appearance(whenContainedInInstancesOf: [UIToolbar.self]).onTintColor = secondaryColor
    }
    
    
    // MARK: - UITabBar
    class func customizeTabBar(withBarTintColor barTintColor: UIColor?, andTintColor tintColor: UIColor?) {
        
        UITabBar.appearance().barTintColor = barTintColor
        if let aColor = tintColor {
            UITabBar.appearance().tintColor = aColor
        }
    }
    
    class  func customizeTabBar(withBarTintColor barTintColor: UIColor?, tintColor: UIColor?, fontName: String?, fontSize: CGFloat) {
        
        UITabBar.appearance().barTintColor = barTintColor
        if let aColor = tintColor {
            UITabBar.appearance().tintColor = aColor
        }
        
        let font = UIFont(name: fontName ?? "", size: fontSize)
        if font != nil {
            if let aFont = font {
                UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: aFont], for: .normal)
            }
        }
    }
    
    
    // MARK: - UIToolbar
    class func customizeToolbar(withPrimaryColor primaryColor: UIColor?, with contentStyle: UIContentStyle) {
        
        var contentColor: UIColor?
        switch contentStyle {
        case .contrast:
            contentColor = UIColor.contrastColor(primaryColor!, false)
        case .light:
            contentColor = .white
        case .dark:
            contentColor = FlatBlackDark
        }
        
        if let aColor = contentColor {
            UIToolbar.appearance().tintColor = aColor
        }
        UIToolbar.appearance().barTintColor = primaryColor
        UIToolbar.appearance().clipsToBounds = true
    }
}
