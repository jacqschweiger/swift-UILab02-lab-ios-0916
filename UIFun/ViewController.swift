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

    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var Control1: UISegmentedControl!
    
    @IBOutlet weak var Control2: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.backgroundColor = UIColor.redColor()
    }
    

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        var mixedColor = ""
        if first == "red" {
            switch second == "red" {
            case true:
                mixedColor = "red"
            case false:
                switch second == "yellow" {
                    case true:
                    mixedColor = "orange"
                    case false:
                        switch second == "blue" {
                            case true:
                            mixedColor = "purple"
                            case false:
                            return "nothing"
                }
                }
            }
        }
                        else if first == "yellow" {
                            switch second == "red" {
                            case true:
                                mixedColor = "orange"
                            case false:
                                switch second == "yellow" {
                                case true:
                                    mixedColor = "yellow"
                                case false:
                                    switch second == "blue" {
                                    case true:
                                        mixedColor = "green"
                                    case false:
                                        return "nothing"
                    }
            }
        }
        }
        else if first == "blue" {
                switch second == "red" {
                case true:
                    mixedColor = "purple"
                case false:
                    switch second == "yellow" {
                    case true:
                        mixedColor = "green"
                    case false:
                        switch second == "blue" {
                        case true:
                            mixedColor = "blue"
                        case false:
                            return "nothing"
                        }
                    }
                }
            }
        return mixedColor
    }
    
    

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        let click1 = Control1.color.name
        print(click1)
        let click2 = Control2.color.name
        print(click2)
        let newColor = mixColors(withFirst: click1, second: click2)
        paintBucket.paintColorName = newColor
        }
    
    
}