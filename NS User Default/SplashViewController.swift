//
//  SplashViewController.swift
//  NS User Default
//
//  Created by Siddhartha Maji on 29/01/18.
//  Copyright © 2018 Siddhartha Maji. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //perform(Selector(("gotoLogin")), withObject: nil, afterDelay: 3)
       // performSelector(onMainThread: "gotoLogin", with: nil, waitUntilDone: true)
        let s = UserDefaults.standard.string(forKey: "type")
        lblWelcome.text = "Welcome " + s!
        perform(#selector(gotoLogin), with: nil, afterDelay: 5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func gotoLogin()  {
        performSegue(withIdentifier: "segueSplash", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
