//
//  ViewController.swift
//  NS User Default
//
//  Created by Siddhartha Maji on 29/01/18.
//  Copyright © 2018 Siddhartha Maji. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{

    

    @IBOutlet weak var tfUser: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var pvType: UIPickerView!
    let types = ["Admin","User"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return types.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return types[row]
    }
    
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent  component: Int) {
        let yearValueSelected = types[row] as String
        print(yearValueSelected)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    @IBAction func btnLogin(_ sender: Any) {
        
        if((tfUser.text == "sid")&&(tfPassword.text == "12345678")){
        UserDefaults.standard.set(tfUser.text, forKey: "user")
        UserDefaults.standard.set(tfPassword.text, forKey: "password")
        UserDefaults.standard.set(types[pvType.selectedRow(inComponent: 0)], forKey: "type")
            showMessage(s: "Sucessfully Loged in")
        }else{
            showMessage(s: "Login failed!!")
        }
    }
    
    private func showMessage(s:String){
        let alertController = UIAlertController(title: "Message", message: s, preferredStyle: .alert)
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            exit(0)
        }
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
}

