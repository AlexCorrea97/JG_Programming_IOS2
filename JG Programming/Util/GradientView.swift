//
//  GradientView.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 16/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    

    @IBInspectable var FirstColor: UIColor = UIColor.clear {
    didSet{
        updateView()
        }
    }
    @IBInspectable var SecondColor: UIColor = UIColor.clear {
        didSet{
            updateView()
        }
    }
    
    override class var layerClass: AnyClass{
        get{
            return CAGradientLayer.self
        }
    }
    
    private func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [FirstColor.cgColor, SecondColor.cgColor]
    }
    
}

