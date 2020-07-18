//
//  TrainingViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class TrainingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
    }
    

    private func setupGradient(){
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.black.cgColor, UIColor.darkGray.cgColor]
        newLayer.frame = view.frame
        view.layer.insertSublayer(newLayer, at: 0)
    }

}
