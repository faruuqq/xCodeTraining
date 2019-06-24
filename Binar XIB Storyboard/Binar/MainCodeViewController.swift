//
//  MainCodeViewController.swift
//  Binar
//
//  Created by user149752 on 6/24/19.
//  Copyright © 2019 user149752. All rights reserved.
//

import UIKit

class MainCodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
        textFieldConstraints()
        view.addSubview(button)

        view.backgroundColor = .red
        
       textField.text = ""
    }
    
    func buttonConstraints() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: button,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: button,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: button,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 0.0)
            .isActive = true
    }
    func textFieldConstraints() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 0.0)
            .isActive = true
    }
    
    
        var textField: UITextField! = {
            let view = UITextField()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.borderStyle = .roundedRect
            view.textAlignment = .center
            
            return view
        }()
    
    var button: UIButton! = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.addTarget(self, action: Selector("buttonPressed"), for: .touchDown)
        view.setTitle("Press Me!", for: .normal)
        view.backgroundColor = UIColor.blue
        
        return view
    }()
        
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
