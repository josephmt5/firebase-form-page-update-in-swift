//
//  BossViewController.swift
//  Lets Teach
//
//  Created by MacBook Air on 1/29/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit
import FirebaseDatabase

class BossViewController: UIViewController {
    var ref:DatabaseReference?
    
    
    @IBOutlet weak var setTitleText: UITextField!
    
    @IBOutlet weak var SetDesText: UITextField!
    
    
    @IBAction func setButton(_ sender: Any) {
        if(setTitleText.text != "")
        {
        ref?.child("lesson").child("title").setValue(setTitleText.text);
        }
        else
        {
            let alertsheet = UIAlertController(
                title:"Must complete all fields",
                message: "please enter lesson title",
                preferredStyle : .alert)
            
            
            alertsheet.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                print("confirm")
            }))
            
            present(alertsheet, animated: true, completion: nil)
        }
        
        if(SetDesText.text != "")
        {
        ref?.child("lesson").child("description").setValue(SetDesText.text);
        }
        else
        {
            let alertsheet = UIAlertController(
                title:"Must complete all fields",
                message: "please enter a brief description",
                preferredStyle : .alert)
            
            
            alertsheet.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                print("confirm")
            }))
            
            present(alertsheet, animated: true, completion: nil)
        
        }
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ref =  Database.database().reference()
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
