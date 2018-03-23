//
//  adminViewController.swift
//  Lets Teach
//
//  Created by MacBook Air on 1/29/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

class adminViewController: UIViewController {

    @IBOutlet weak var passtext: UITextField!
    
    @IBAction func subButton(_ sender: Any) {
        
        if(passtext.text == "Pioneer47")
        {
            performSegue(withIdentifier: "entryway", sender: self)
        }
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
