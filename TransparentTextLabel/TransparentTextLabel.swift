//
//  TransparentTextLabel.swift
//  TransparentTextLabelSample
//
//  Created by Alexandre barbier on 03/06/14.
//  Copyright (c) 2014 Alexandre barbier. All rights reserved.
//

import UIKit


class TransparentTextLabel : UILabel {
    override func drawTextInRect(rect: CGRect)  {
        var context = UIGraphicsGetCurrentContext()
        self.textColor = UIColor.clearColor()
        CGContextSetBlendMode(context, kCGBlendModeCopy)
        super.drawTextInRect(rect)
    }
}
