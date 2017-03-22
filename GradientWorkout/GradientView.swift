//
//  GradientView.swift
//  GradientWorkout
//
//  Created by Yawo Echitey on 3/22/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var FirstColor: UIColor = UIColor.clear{
        didSet{
            updateGradientView()
        }
    }
    
    @IBInspectable var SecondColor: UIColor = UIColor.clear{
        didSet{
            updateGradientView()
        }
    }
    
    @IBInspectable var Location: CGFloat = 0.0{
        didSet{
            updateGradientView()
        }
    }
    
    override class var layerClass: AnyClass {
        get{
            return CAGradientLayer.self
        }
    }
    
    func updateGradientView(){
        if let layer = self.layer as? CAGradientLayer{
            layer.colors = [FirstColor.cgColor, SecondColor.cgColor]
            if Location >= 0 && Location <= 1{
                let loc = Location as NSNumber
                layer.locations = [loc]
            }
            //layer.locations = [Location as! NSNumber]
        }
    }
    
}
