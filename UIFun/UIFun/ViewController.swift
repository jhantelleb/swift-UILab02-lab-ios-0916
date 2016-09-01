//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    
    @IBOutlet weak var paintBucket: UIView!
    
    @IBOutlet weak var firstColor: UISegmentedControl!
    @IBOutlet weak var secondColor: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.paintColorName = "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue"
        
        let lowerFirst = first.lowercaseString
        let lowerSecond = second.lowercaseString
        
        switch lowerFirst{
        case "red":
            switch lowerSecond{
            case "yellow":
                return "orange"
            case "blue":
                return "purple"
            default:
                return "red" }
        case "yellow":
            switch lowerSecond{
            case "red":
                return "orange"
            case "blue":
                return "green"
            default:
                return "yellow" }
        case "blue":
            switch lowerSecond{
            case "red":
                return "purple"
            case "yellow":
                return "green"
            default:
                return "blue" }
        default:
            return "red"
            }
        }
    


    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let getFirstColor = firstColor.color.name
        let getSecondColor = secondColor.color.name
        
        let finalColor = mixColors(withFirst: getFirstColor, second: getSecondColor)
        
        paintBucket.paintColorName = finalColor
    }
}
