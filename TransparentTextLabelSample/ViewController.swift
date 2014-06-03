//
//  ViewController.swift
//  TransparentTextLabelSample
//
//  Created by Alexandre barbier on 03/06/14.
//  Copyright (c) 2014 Alexandre barbier. All rights reserved.
//

import UIKit
import QuartzCore
import TransparentTextLabel

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        var first = TransparentTextLabel(frame:CGRect(x:20,y:50,width:200, height:50))
        first.text = "test"
        first.textAlignment = NSTextAlignment.Center
        first.layer.cornerRadius = 4.0
        first.layer.masksToBounds = true
        first.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.9)
        var gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.redColor().CGColor,UIColor.yellowColor().CGColor]
        gradientLayer.startPoint = CGPoint(x:1,y:0.5)
        gradientLayer.endPoint = CGPoint(x:1,y:1)
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        self.view.addSubview(first)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

