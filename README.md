<p align="center">
<img src="https://i.imgur.com/raNIDWO.jpg" alt="CyaneaOctopus by Adam McElhaney"/>
</p>

<p align="center">
    <img src="https://img.shields.io/badge/platform-iOS%209%2B-blue.svg?style=flat" alt="Platform: iOS 9+"/>
    <a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/language-swift%204-4BC51D.svg?style=flat" alt="Language: Swift 3" /></a>
    <a href="https://cocoapods.org/pods/CyaneaOctopus"><img src="https://cocoapod-badges.herokuapp.com/v/CyaneaOctopus/badge.png" alt="CocoaPods compatible" /></a>
    <img src="http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat" alt="License: MIT" />
</p>
<br><br>

## Swift 4

## Installation

CyaneaOctopus is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CyaneaOctopus'
```

## Extras Installation

**CyaneaOctopus.clr**
This is a color pallet library for Interface Builder (and other mac apps that use the color library.
To install, from Finder > Go, hold <code>Option</code> and click *Library*. Copy the *.clr* file to ***/Library/Colors***
<p align="center">

<img src="https://i.imgur.com/LWOSdHW.png" alt="Install"/>
</p>

***CyaneaOctopus.aco***
This is a color pallet swatch for Adobe products.
You can load this by clicking the **Load Swatches...** button in the Swatches panel.



## Introduction

**CyaneaOctopus** is a lightweight, yet powerful, color framework for iOS written in pure Swift. It is based upon Chameleon framework by [Vicc Alexander](https://github.com/viccalexander/Chameleon). The Chameleon framework appears to be abandoned, so it was rebuilt here as CyaneaOctopus (another animal that can change its colors).  

With CyaneaOctopus, you can easily stop tinkering with RGB values, wasting hours figuring out the right color combinations to use in your app, and worrying about whether your text will be readable on the various background colors of your app. 

### Features

* 24 Flat Colors in 2 Shades
* Gradient Colors
* Generate Colors from Images
* Lighten or Darken Any Color
* Hex Color Support
* Global App Theming 
* Swift 4.2

## 🌟 Product Features

### 100% Flat 

CyaneaOctopus features over 24 hand-picked colors that come in both light and dark shades. 

<p align="center">

<img src="https://i.imgur.com/3Ra96Bo.jpg" alt="Swatches"/>
</p>

### Colors From Images 

CyaneaOctopus allows you to seamlessly extract non-flat or flat color schemes from images without hassle. You can also generate the average color from an image with ease. You can now mold the UI colors of a profile, or product based on an image!

## ⚠️ Requirements

* Swift
* Requires a minimum of iOS 9.0 for Swift.
* Requires Xcode 6.3 for use in any iOS Project

## 🔑 License
CyaneaOctopus is released and distributed under the terms and conditions of the [MIT license](https://github.com/adammcelhaney/CyaneaOctopus/blob/master/LICENSE.md).

## 👥 Contributions
If you run into problems, please open up an issue. We also actively welcome pull requests. By contributing to CyaneaOctopus you agree that your contributions will be licensed under its MIT license.

## 📗 Documentation
All methods, properties, and types available in CyaneaOctopus are documented below.   

## Installation

CyaneaOctopus is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CyaneaOctopus'
```


#### Manual Installation
If you rather install this framework manually, just drag and drop the CyaneaOctopus folder into your project, and make sure you check the following boxes. 

<p align="center">
<img src="http://i.imgur.com/gDXaF5F.png" alt="Manual Installation"/>
</p>


### Usage
To use the features in CyaneaOctopus, include the following import:

###### If you installed CyaneaOctopus using CocoaPods:

###### Swift:
``` swift
import CyaneaOctopus
```

### UIColor Methods

##### Normal Convention:


###### Swift
``` swift
view.backgroundColor = UIColor.flatGreenDark
```

##### CyaneaOctopus Shorthand:


###### Swift
``` swift
view.backgroundColor = FlatGreenDark()
```

Setting the color for a light shade is the same, except without adding the *Dark* suffix. (By default, all colors without a *Dark* suffix are light shades). For example:

##### Normal Convention:

###### Swift
``` swift
view.backgroundColor = UIColor.flatGreen
```

##### CyaneaOctopus Shorthand:

###### Swift
``` swift
view.backgroundColor = FlatGreen()
```

#### Gradient Colors
Gradient colors can be created by passing a view to color, an array of UIColors, and a direction for the gradient.

###### Swift
```  swift
let colors : [UIColor] = [.flatBlueColor(),.flatRedColor(),.flatGreenColor()]
UIColor.gradientColor(view: view, colors: colors, direction: .leftToRight)
```

###### 8 Possible Gradient Directions
- topToBottom
- leftToRight
- bottomToTop
- rightToLeft
- topLeftToBottomRight
- topRightToBottomLeft
- bottomLeftToTopRight
- bottomRightToTopLeft

#### Random Colors
There are four ways to generate a random flat color. If you have no preference as to whether you want a light shade or a dark shade, you can do the following:

##### Normal Convention:

###### Swift
``` swift
view.backgroundColor = UIColor.randomFlat
```

##### CyaneaOctopus Shorthand:

###### Swift
``` swift
view.backgroundColor = RandomFlatColor()
```


**UIShadeStyles:**  
- `UIShadeStyleLight` (`UIShadeStyle.Light` in Swift)
- `UIShadeStyleDark` (`UIShadeStyle.Dark` in Swift)


#### Hex Colors

One of the most requested features, *hex colors*, is now available. You can simply provide a hex string with or without a *#* sign:

##### Normal Convention:

###### Swift
``` swift
UIColor(hexString:string)
```

##### CyaneaOctopus Shorthand:

###### Swift
``` swift
HexColor(hexString)
```
#### Hex Values 

Retrieving the `hexValue` of a UIColor is just as easy.

###### Swift
``` swift
FlatGreen.hexValue //Returns @"2ecc71"
```

#### Lighter and Darker Colors

Sometimes all you need is a color a shade lighter or a shade darker. Well for those rare, but crucial moments, CyaneaOctopus's got you covered. You can now lighten any color the following way:

##### Normal Convention:

###### Swift
``` swift
color.lightenByPercentage(percentage: CGFloat)
```

You can also generate a darker version of a color:

##### Normal Convention:
###### Swift
``` swift
color.darkenByPercentage(percentage: CGFloat)
```

### Changing the Color of Images
Cyanea Octopus supports color overlay and tiniting of UIImages.

###### Tint
``` swift
let dice = UIImage(named: "test")?.tint(.red)
```
All grey-scale colors are tinted with the desired color.

###### Tint
``` swift
let dice = UIImage(named: "test")?.overlayColor(.yellow)
```
The alpha channel is fully colored.

<img src="https://i.imgur.com/0Z2osSb.png" width="25%" height="25%" alt="Color tint and overlay"/>


### Colors From Images

CyaneaOctopus now supports the extraction of colors from images. You can either generate both flat and non-flat color schemes from an image, or easily extract the average color.

To generate a color scheme simply do the following:
##### Normal Convention:

##### CyaneaOctopus Shorthand:
###### Swift
``` swift
ColorsFromImage(image, isFlatScheme)
```

To extract the average color from an image, you can also do:
##### Normal Convention:
###### Swift
``` swift
UIColor(averageColorFromImage: UIImage)
```

## 👑 Author
CyaneaOctopus was developed by **Adam McElhaney** [(@windmarble)](https://twitter.com/windmarble) in 2018 using Swift 4.2.  Currently, it is being maintained by  [@adammcelhaney](https://github.com/adammcelhaney). 

## 📝 To Do List 
* Add Flattening Of Colors
* Add Colors with Shades
* Add Complementary Colors


## 🚗 RoadMap 
* Add "night mode" functionally to swap out colors to a different theme on the fly.


## 📄 Change Log
### See [Changelog.md](https://github.com/adammcelhaney/CyaneaOctopus/blob/master/Changelog.md) 

