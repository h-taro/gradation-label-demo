//
//  ViewController.swift
//  demo
//
//  Created by taro.hiraishi on 2023/03/16.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let gradientLabel: GradientLabel = {
        let label = GradientLabel()
        label.textAlignment = .center
        label.textColor = .white
        label.text = "hoge"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(gradientLabel)
        
        gradientLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}

