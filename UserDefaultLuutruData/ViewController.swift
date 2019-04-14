//
//  ViewController.swift
//  UserDefaultLuutruData
//
//  Created by Anh vũ on 4/10/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var userDefault = UserDefaults.standard
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField01: UITextField!
    @IBOutlet weak var textField02: UITextField!
    @IBOutlet weak var result01: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resul02: UILabel!
    override func viewWillAppear(_ animated: Bool) {

        super.viewDidLoad()
        loadData()
        
    }
    
    func loadData(){
        if let number = userDefault.object(forKey: "number") as? String{
        result.text   = number
        }
    }
    
    @IBAction func run(sender: Any) {
        userDefault.set(textField.text, forKey: "number")
//        let number = userDefault.integer(forKey: "number")
//        userDefault.set(textField01.text, forKey: "text")
//        let text   = userDefault.object(forKey: "text") as! String
//        let forKey = userDefault.integer(forKey: "text") as Int
//        result.text   = String(number)
//        result01.text = text
//        resul02.text  = String(forKey)
//        textField.text   = ""
//        textField01.text = ""
        
    }
    
    @IBAction func xoa(_ sender: Any) {
        userDefault.removeObject(forKey: "number")
    }
}
