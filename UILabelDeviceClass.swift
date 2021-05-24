//
//  CustomLabel.swift
//  dynamicFontSize
//
//  Created by MAC on 03/03/21.
//

import UIKit

class UILabelDeviceClass : UILabel {

@IBInspectable var iPhoneFontSize:CGFloat = 0 {
    didSet {
        overrideFontSize(fontSize: iPhoneFontSize)
    }
}

func overrideFontSize(fontSize:CGFloat){
    let bounds = UIScreen.main.bounds
    let height = bounds.size.height
    switch height {
    case 480.0: //Iphone 3,4,SE => 3.5 inch
        self.font = UIFont.systemFont(ofSize: fontSize*0.75)
        break
    case 568.0: //iphone 5, 5s => 4 inch
        self.font = UIFont.systemFont(ofSize: fontSize*0.8)
        break
    case 667.0: //iphone 6, 6s => 4.7 inch
        self.font = UIFont.systemFont(ofSize: fontSize*0.9)
        break
    case 736.0: //iphone 6s+ 6+ => 5.5 inch
        self.font = UIFont.systemFont(ofSize: fontSize)
        break
    default:
        print("not an iPhone")
        break
    }
}
}
