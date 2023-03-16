//
//  GradientLabel.swift
//  demo
//
//  Created by taro.hiraishi on 2023/03/16.
//

import UIKit

class GradientLabel: UILabel {
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let gradientLayer = layer as? CAGradientLayer {
            let startColor = UIColor.systemPink
            let finishColor = UIColor.systemBlue
            
            gradientLayer.colors = [
                startColor.cgColor,
                finishColor.cgColor,
            ]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        }
        
        layer.cornerRadius = 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        var intrinsicContentSize = super.intrinsicContentSize
        intrinsicContentSize.height += 4
        intrinsicContentSize.width += 4
        return intrinsicContentSize
    }
}
