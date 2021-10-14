//
//  ComposeView.swift
//  worldwidewalk
//
//  Created by Adsum MAC 3 on 14/10/21.
//

import UIKit

class ComposeView: UIView {

// ........
//  Other layout code and methods
// ........
  
  
//We're adding the bottom constraint here to make sure we belong to window
override func didMoveToWindow() {
        super.didMoveToWindow()
        if #available(iOS 11.0, *) {
            if let window = window {
                bottomAnchor.constraint(lessThanOrEqualToSystemSpacingBelow: window.safeAreaLayoutGuide.bottomAnchor, multiplier: 1.0).isActive = true
            }
        }
    }
    
}
