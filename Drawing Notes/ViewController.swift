//
//  ViewController.swift
//  Drawing Notes
//
//  Created by Farid Qanbarov on 4/8/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var drawingView: UIView!
    @IBOutlet weak var colorsStackView: UIStackView!
    private var color : UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: drawingView)
            let panGesture = sender
            panGesture.maximumNumberOfTouches = 1
            panGesture.minimumNumberOfTouches = 1
            drawingView.addGestureRecognizer(panGesture)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func colorSelected(_ sender: UIButton) {
        color = sender.backgroundColor
    }
    
    
}

