//
//  GradientView.swift
//  demo
//
//  Created by Adsum MAC 3 on 24/05/21.
//

import UIKit

class GradientView: UIView {

    @IBInspectable
    var startColor: UIColor = .red

    @IBInspectable
    var endColor: UIColor = .black

    private let gradientLayerName = "Gradient"

    override func layoutSubviews() {
        super.layoutSubviews()

        setupGradient()
    }

    private func setupGradient() {
        var gradient: CAGradientLayer? = layer.sublayers?.first { $0.name == gradientLayerName } as? CAGradientLayer
        if gradient == nil {
            gradient = CAGradientLayer()
            gradient?.name = gradientLayerName
            layer.addSublayer(gradient!)
        }
        gradient?.frame = bounds
        gradient?.colors = [startColor.cgColor, endColor.cgColor]
        gradient?.zPosition = -1
    }

}
