//
//  checkButton.swift
//  cart
//
//  Created by MAC on 27/03/21.
//

import UIKit

class CheckBox: UIButton {
    var buttonsArrays: [UIButton]! {
        didSet {
            for c in buttonsArrays {
                c.setImage(UIImage(named: "uncheckedCir"), for: .normal)
                c.setImage(UIImage(named: "checkedCir"), for: .selected)
            }
        }
    }
    var selectedButtons: UIButton?
    var defaultButtons: UIButton = UIButton() {
        didSet {
            buttonArrayUpdateds(buttonSelected: self.defaultButtons)
        }
    }

    func buttonArrayUpdateds(buttonSelected: UIButton) {
        for c in buttonsArrays {
            if c == buttonSelected {
                selectedButtons = c
                c.isSelected = true
            } else {
                c.isSelected = false
            }
        }
    }
}
