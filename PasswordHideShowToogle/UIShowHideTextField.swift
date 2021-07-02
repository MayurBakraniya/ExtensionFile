//
//  UIShowHideTextField.swift
//  dicAPI
//
//  Created by Adsum MAC 3 on 21/04/21.
//

//How to use

@IBOutlet weak var TextField: UITextField!

override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    TextField.becomeFirstResponder()
}

/*---------------------------------------------------*/

import UIKit

class UIShowHideTextField: UITextField {

    let rightButton  = UIButton(type: .custom)

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    required override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    func commonInit() {
        rightButton.setImage(UIImage(systemName: "eye.slash.fill") , for: .normal)
        rightButton.tintColor = .black
        rightButton.addTarget(self, action: #selector(toggleShowHide), for: .touchUpInside)
        rightButton.frame = CGRect(x:0, y:0, width:30, height:30)

        rightViewMode = .always
        rightView = rightButton
        isSecureTextEntry = true
    }

    @objc
    func toggleShowHide(button: UIButton) {
        toggle()
    }

    func toggle() {
        isSecureTextEntry = !isSecureTextEntry
        if isSecureTextEntry {
            rightButton.setImage(UIImage(systemName: "eye.slash.fill") , for: .normal)
            rightButton.tintColor = .black
        } else {
            rightButton.setImage(UIImage(systemName: "eye.fill") , for: .normal)
            rightButton.tintColor = .black

        }
    }

}
