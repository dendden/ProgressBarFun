//
//  ProgressBarView.swift
//  ProgressBarFun
//
//  Created by Денис Трясунов on 11/4/16.
//  Copyright © 2016 Денис Трясунов. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {
    
    private var _innerProgress: CGFloat = 0.0
    
    var innerProgress: CGFloat {
        set {
            if newValue > 1.0 {
                _innerProgress = 1.0
            } else if newValue < 0.0 {
                _innerProgress = 0.0
            } else {
                _innerProgress = newValue
            }
            setNeedsDisplay()
        } get {
            return _innerProgress * bounds.width
        }
    }

    override func draw(_ rect: CGRect) {
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: innerProgress)
    }

}
