//
//  ViewController.swift
//  ColorExplorer
//
//  Created by Christopher Andrews on 3/2/17.
//  Copyright © 2017 Christopher Andrews. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var color:UIColor?{
        didSet{
            colorDisplay.backgroundColor = color
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    
    @IBOutlet weak var colorDisplay: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func sliderUpdate(_ sender: UISlider) {
        let red = redSlider.value
        let green = greenSlider.value
        let blue = blueSlider.value
        
        color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
    
    

}

