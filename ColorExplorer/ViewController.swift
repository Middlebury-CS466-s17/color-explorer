//
//  ViewController.swift
//  ColorExplorer
//
//  Created by Christopher Andrews on 3/2/17.
//  Copyright © 2017 Christopher Andrews. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    private var color:UIColor?{
//        didSet{
//            updateColor()
//        }
//    }
    
    
    private var color:ColorModel = ColorModel()
    
    private func updateColor(){
        view.backgroundColor = color.uiColor
        
        redSlider.value = color.red
        greenSlider.value = color.green
        blueSlider.value = color.blue
        hexLabel.textColor = color.contrastingTextColor
        hexLabel.text = color.hexString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateColor()
    }

   
    

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var hexLabel: UILabel!
    
    
    @IBAction func sliderUpdate(_ sender: UISlider) {
        color.red = redSlider.value
        color.green = greenSlider.value
        color.blue = blueSlider.value
        updateColor()
    }
    
    

}

