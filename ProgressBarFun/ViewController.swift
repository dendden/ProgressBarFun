//
//  ViewController.swift
//  ProgressBarFun
//
//  Created by Денис Трясунов on 11/4/16.
//  Copyright © 2016 Денис Трясунов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.innerProgress = CGFloat(slider.value)
    }

}

