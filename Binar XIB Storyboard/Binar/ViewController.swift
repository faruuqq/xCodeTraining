//
//  ViewController.swift
//  Binar
//
//  Created by user149752 on 6/24/19.
//  Copyright © 2019 user149752. All rights reserved.
//

import UIKit

class ViewController : UIViewController {

    @IBOutlet weak var labelUserField: UILabel!
    
    @IBOutlet weak var userNameField: UITextField!
    
    @IBAction func buttonAction(_ sender: Any) {
        login()
    }
    
    @IBOutlet weak var Button: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting Values
        userDefaults.set(true, forKey: "Key1")
        userDefaults.set(456, forKey: "Key2")
        userDefaults.set("Some Object", forKey: "Key3")
        userDefaults.set([1, 2, 3, 4], forKey: "Key4")
        
        
        // Getting Values
        userDefaults.bool(forKey: "Key5")
        userDefaults.integer(forKey: "Key2")
        userDefaults.object(forKey: "Key3")
        userDefaults.object(forKey: "Key4")
        
        print("\(userDefaults.integer(forKey: "Key2"))")
        
        userDefaults.synchronize()
        savePropertyList()
        readPropertyList()
        
        //print(NSHomeDirectory())
        
    // Do any additional setup after loading the view.
    }
        var saveModel = [SaveModel]()
        let fileManager = (FileManager.default)
        let plistpath = Bundle.main.path(forResource: "Property List", ofType: "plist")!
    
        func savePropertyList() {
            if fileManager.fileExists(atPath: plistpath) { //writing Plist file
                //archiving
                NSKeyedArchiver.archiveRootObject(saveModel, toFile: plistpath)
            }
        }
    
    func loadPropertyList() {
        
        if fileManager.fileExists(atPath: plistpath) {
            //unarchiving
            if let tempArr: [SaveModel] = NSKeyedUnarchiver.unarchiveObject(withFile: plistpath) as? [SaveModel] {
                saveModel = tempArr
                print(saveModel[0].title)
            }
            
        }
    }
    
    func readPropertyList() {
        var format = PropertyListSerialization.PropertyListFormat.xml //format of the property list
        var plistData:[String:AnyObject] = [:] //our data
        var isColorInvented: Bool
        let plistPath:String? = Bundle.main.path(forResource: "Property List", ofType: "plist")!
        let plistXML = FileManager.default.contents(atPath: plistPath!)
        
        
        do {
            plistData = try PropertyListSerialization.propertyList(from: plistXML!, options: .mutableContainersAndLeaves, format: &format) as! [String:AnyObject]
            isColorInvented = plistData["isAvailable"] as?  Bool ?? false
            print(isColorInvented)
        }
        catch {
            print ("Error reading plist: \(error), format: \(format)")
        }
    }
    
    
    func login() {
        if self.userNameField.text == "faruuq" {
            self.labelUserField.text = "Welcome"
        }
        else {
            self.labelUserField.text = "Sorry, who?"
        }
    
}
    let userDefaults = UserDefaults.standard
    
}
