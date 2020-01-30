//
//  ViewController.swift
//  Todo Blitz
//
//  Created by Eike Karsten Schlicht on 30.01.20.
//  Copyright © 2020 Eike Karsten Schlicht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackground(_ sender: Any) {
        let everySubView = view.subviews
        var everyUILabel = filteredUiLabels(everySubview: everySubView)
       
        if(darkModeSwitch.isOn) {
            view.backgroundColor = UIColor.darkGray
            changeTextColorOf(uiLabels: everyUILabel, toColor: UIColor.white)
        } else {
            view.backgroundColor = UIColor.white
            changeTextColorOf(uiLabels: everyUILabel, toColor: UIColor.black)
        }
    }
    
    private func changeTextColorOf(uiLabels: Array<UILabel>, toColor: UIColor){
        for eachLabel in uiLabels {
            eachLabel.textColor = toColor
        }
    }
    
    private func filteredUiLabels(everySubview: Array<UIView>) -> Array<UILabel>{
        var everyUILabel: Array<UILabel> = Array() // initialize array
        for eachView in everySubview {
                   if eachView is UILabel {
                       let currentLabel = eachView as! UILabel
                       everyUILabel.append(currentLabel)
                   }
               }
        return everyUILabel
    }
}

